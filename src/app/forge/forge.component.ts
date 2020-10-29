import { Component, OnInit } from '@angular/core';
import { CodexService } from '../codex.service';
import { Faction, Detachment, DetachmentSlot } from '../codexInterface';

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
  slots: string[] = [];

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

  get slotCount() { return Object.keys(this.detachment.slots).length; }

  factionSelected() {
    // TODO: Add confirmation if Detachment is already partially built.
    this.faction = this.selectedFaction;
  }

  detachmentSelected() {
    // TODO: Add confirmation if Detachment is already partially built.
    this.detachment = this.selectedDetachment;
    this.slots = [];

    this.codexService.getDetachmentSlots(this.detachment.id).subscribe(
      (response) => {
        console.log(response);
        this.detachment.slots = response;
        this.slots = Object.keys(this.detachment.slots);
      }
    )
  }
}
