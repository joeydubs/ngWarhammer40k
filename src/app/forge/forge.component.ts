import { Component, OnInit } from '@angular/core';
import { CodexService } from '../codex.service';
import { Faction, Detachment } from '../codexInterface';

@Component({
  selector: 'app-forge',
  templateUrl: './forge.component.html',
  styleUrls: ['./forge.component.css']
})
export class ForgeComponent implements OnInit {

  factions: Faction[] = []
  detachments: Detachment[] = []

  faction: Faction;
  detachment: Detachment;

  selectedFaction: Faction;
  selectedDetachment: Detachment;

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
  }

  factionSelected() {
    // TODO: Add confirmation if Detachment is already partially built.
    console.log("Before: " + this.faction);
    this.faction = this.selectedFaction;
    console.log("After: " + this.faction);
  }

  detachmentSelected(detachment: Detachment) {
    // TODO: Add confirmation if Detachment is already partially built.
    console.log("Before: " + this.detachment);
    this.detachment = this.selectedDetachment;
    console.log("After: " + this.detachment);
  }
}
