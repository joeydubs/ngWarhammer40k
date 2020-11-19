import { Component, OnInit } from '@angular/core';
import { FormArray, FormControl, FormGroup, Validators } from '@angular/forms';
import { forkJoin, from, of } from 'rxjs';
import { mergeMap, switchMap } from 'rxjs/operators';
import { CodexService } from '../codex.service';
import { Faction, Subfaction, Detachment, Role, Unit, Model, Ability, Keyword, FactionKeyword, ModelStats, Wargear, WargearOptions } from '../codexInterface';

@Component({
  selector: 'app-forge',
  templateUrl: './forge.component.html',
  styleUrls: ['./forge.component.css']
})
export class ForgeComponent implements OnInit {

  factions: Faction[] = [];
  detachments: Detachment[] = [];
  roles: Role[] = [];
  units: Unit[] = [];
  subfactions: Subfaction[] = [];

  faction: Faction;
  detachment: Detachment;
  slots: string[] = [];
  slotsFilled: {} = {};
  models: Model[];
  weapons: Wargear[] = [];
  otherWargear: Wargear[] = [];
  hasOptions: boolean = false;

  selectedFaction: Faction;
  selectedDetachment: Detachment;
  selectedRole: Role = { name: "Any", id: 0 };
  selectedUnit: Unit;
  selectedSubfaction: Subfaction;

  unitForm: FormGroup;

  constructor(private codexService: CodexService) { }

  ngOnInit(): void {
    this.codexService.getFactionList().subscribe(
      (response) => {
        this.factions = response;
      }
    );

    this.codexService.getDetachmentList().subscribe(
      (response) => {
        this.detachments = response;
      }
    );

    this.codexService.getRoleList().subscribe(
      (response) => {
        this.roles = response;
      }
    )
  }

  get slotCount() { return Object.keys(this.detachment.slots).length; }
  get selections() { return this.unitForm.get("selections") as FormArray; }
  options(i: number) { return this.selections.controls[i].get("options") as FormArray; }

  refreshUnits() {
    this.unitForm = undefined;
    this.selectedUnit = undefined;
    this.units = [];

    this.codexService.getUnitList(this.faction.id, this.selectedRole ? this.selectedRole.id : 0).pipe(
      switchMap(units => {
        this.units = units;
        return from(units);
      }),
      mergeMap((unit, index) => {
        return forkJoin([
          of(index),
          this.codexService.getFactionKeywords(unit.id),
          this.codexService.getUnitAbilities(unit.id)
        ])
      })
    ).subscribe(
      (response) => {
        let index = response[0] as number;
        let factionKeywords = response[1] as FactionKeyword[];
        let unitAbilities = response[2] as Ability[];

        this.units[index].factionKeywords = factionKeywords
        this.units[index].abilities = unitAbilities;
      }
    )
  }

  factionSelected() {
    // TODO: Add confirmation if Detachment is already partially built.
    this.faction = this.selectedFaction;
    
    this.refreshUnits();

    this.codexService.getSubfactionList(this.faction.id).subscribe(
      (response) => {
        this.subfactions = response;
      }
    )
  }

  detachmentSelected() {
    // TODO: Add confirmation if Detachment is already partially built.
    this.detachment = this.selectedDetachment;
    this.slots = [];
    this.slotsFilled = {}

    this.codexService.getDetachmentSlots(this.detachment.id).subscribe(
      (response) => {
        this.detachment.slots = response;
        this.slots = Object.keys(this.detachment.slots);
        for (let slot of this.slots) {
          this.slotsFilled[slot] = 0;
        }
      }
    )
  }

  roleSelected() {
    this.refreshUnits();
  }

  unitSelected() {
    this.unitForm = undefined;
    this.hasOptions = false;
    this.models = undefined;
    this.weapons = [];
    this.otherWargear = [];

    this.codexService.getModels(this.selectedUnit.id).pipe(
      switchMap(models => {
        this.models = models;
        return from(models);
      }),
      mergeMap((model, index) => {
        let forkJoinArray: any = [
          of(index),
          this.codexService.getKeywords(model.id),
          this.codexService.getModelStats(model.id),
          this.codexService.getModelWargear(model.id),
        ];

        if (model.hasOptions) {
          this.hasOptions = true;
          forkJoinArray.push(this.codexService.getWargearOptions(model.id))
        }
                
        return forkJoin(forkJoinArray)
      })
    ).subscribe(
      (response) => {
        let index = response[0] as number;
        let keywords = response[1] as Keyword[];
        let modelStats = response[2] as ModelStats[];
        let modelWargear = response[3] as Wargear[];

        this.models[index].keywords = keywords;
        this.models[index].stats = modelStats;
        this.models[index].wargear = modelWargear;

        for (let wargear of modelWargear) {
          if (wargear.typeName == "Weapon") {
            this.weapons.push(wargear);
          }
          else {
            this.otherWargear.push(wargear);
          }
        }

        if (response.length == 5) {
          let wargearOptions = response[4] as WargearOptions[];
          this.models[index].options = wargearOptions;
        }

        this.updateWargearForm()
      }
    )
  }

  updateWargearForm() {
    /**
     * TODO:
     *  - Create an object to store unit selections
     *  - Generate unitForm based on object
     *  - Allow Object/Form to be modified while filling it out 
     */

     let selections = new FormArray([]);

    for (let model of this.models) {
      let modelGroup = new FormGroup({
        quantity: new FormControl(model.min, [Validators.min(model.min), Validators.max(model.max)]),
      });

      if (model.hasOptions) {
        let options = new FormArray([]);

        for (let option of model.options) {
          let state = option.default ? option.default : '';
          options.push(new FormControl(state, Validators.required))
        }

        modelGroup.addControl("options", options);
      }

      selections.push(modelGroup);
    }

    this.unitForm = new FormGroup({
      selections: selections
    });
  }

  split(modelName: string) {
    // TODO
  }

  removeSplit(modelName: string, index: number) {
    // TODO
  }
}
