import { Component, OnInit } from '@angular/core';
import { CodexService } from '../codex.service';
import { Faction, Detachment, Role, Unit, Subfaction } from '../codexInterface';

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

  factionSelected() {
    // TODO: Add confirmation if Detachment is already partially built.
    this.faction = this.selectedFaction;

    this.codexService.getUnitList(this.faction.id, this.selectedRole ? this.selectedRole.id : 0).subscribe(
      (response) => {
        this.units = response;
      }
    )

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
    this.units = [];
    console.log(this.selectedRole ? this.selectedRole.id : 0);
    this.codexService.getUnitList(this.faction.id, this.selectedRole ? this.selectedRole.id : 0).subscribe(
      (response) => {
        this.units = response;
      }
    )
  }

  unitSelected() {
    // TODO
  }
}
