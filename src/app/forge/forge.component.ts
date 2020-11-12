import { Component, OnInit } from '@angular/core';
import { forkJoin, from, of } from 'rxjs';
import { mergeMap, switchMap } from 'rxjs/operators';
import { CodexService } from '../codex.service';
import { Faction, Subfaction, Detachment, Role, Unit, Model, Ability, Keyword, FactionKeyword } from '../codexInterface';

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

  selectedFaction: Faction;
  selectedDetachment: Detachment;
  selectedRole: Role = { name: "Any", id: 0 };
  selectedUnit: Unit;
  selectedSubfaction: Subfaction;

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

  refreshUnits() {
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
          this.codexService.getKeywords(unit.id),
          this.codexService.getFactionKeywords(unit.id),
          this.codexService.getUnitAbilities(unit.id)
        ])
      })
    ).subscribe(
      (response) => {
        let index = response[0] as number;
        let keywords = response[1] as Keyword[]
        let factionKeywords = response[2] as FactionKeyword[];
        let unitAbilities = response[3] as Ability[];

        this.units[index].keywords = keywords;
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
    this.models = undefined;

    this.codexService.getModels(this.selectedUnit.id).subscribe(
      (response) => {
        this.models = response;
      }
    )
  }
}
