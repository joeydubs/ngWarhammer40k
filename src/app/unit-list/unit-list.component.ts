import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
import { CodexService } from '../codex.service';
import { Faction } from '../codexInterface';
import { UnitStats, UnitWoundTrack } from '../unit';

@Component({
  selector: 'app-unit-list',
  templateUrl: './unit-list.component.html',
  styleUrls: ['./unit-list.component.css']
})
export class UnitListComponent implements OnInit {

  roleSelectorDisabled = true;
  unitSelectorDisabled = true;
  subfactionSelectorDisabled = true;
  showStatsDisabled = true;
  saveUnitDisabled = true;
  displayStats = false;
  displayOptions = false;

  factionSelector: string;
  roleSelector: string;
  unitSelector: string;
  subfactionSelector: string;

  statsButtonText = "Show Stats"

  factions: Faction[];
  roles: string[];
  units: string[];
  subfactions: string[];

  unitStats: UnitStats[] = [];
  unitWoundTrack: UnitWoundTrack[] = [];

  constructor(
    private codexService: CodexService
  ) { }

  ngOnInit(): void {
    this.getFactions();
  }

  resetSelectors(selector: string) {
    switch (selector) {
      case "faction":
        console.log("Clearing from faction")
        if (this.factionSelector === "0") {
          this.roleSelectorDisabled = true;
        }
        this.unitSelectorDisabled = true;
        this.roleSelector = "0";
        this.roles = [];
      case "role":
        console.log("Clearing from role")
        this.unitSelector = "0";
        this.units = [];
        this.subfactionSelector = "0";
        this.subfactions = [];
        this.subfactionSelectorDisabled = true;
        this.showStatsDisabled = true;
        this.saveUnitDisabled = true;
        this.displayStats = false;
        this.displayOptions = false;
        this.statsButtonText = "Show Stats";
        this.unitStats = [];
        this.unitWoundTrack = [];
    }
  }

  getFactions(): void {
    this.codexService.getFactionList()
      .subscribe(factions => this.factions = factions);
  }

  getRoles(): void {
    this.resetSelectors("faction");

    this.roles = this.codexService.getRoleList();
    this.roleSelectorDisabled = false;
  }

  getUnits(): void {
    this.resetSelectors("role");

    this.codexService.getUnitList(this.factionSelector, this.roleSelector)
      .subscribe(
        (units) => {
          console.log("Setting units")

          this.units = units
          this.unitSelectorDisabled = false;
        });
  }
  
  unitSelected(): void {
    console.log("Unit Selected called")
    this.displayOptions = true;
    this.showStatsDisabled = false;

    this.codexService.getSubfactionsList(this.factionSelector)
      .subscribe(
        (subfactions) => {
          this.subfactions = subfactions;
          // TODO: Add conditional logic to preselect subfaction if not optional
          // TODO: Add conditional logic to skip subfaction if not needed
          this.subfactionSelectorDisabled = false;
          // TODO: Save unit should be enabled after subfaction is selected
          this.saveUnitDisabled = false;
        }
      );

    this.codexService.getStats(this.unitSelector)
      .subscribe(
        (unitStats) => {
          this.unitStats = unitStats;

          if (unitStats[0].hasWoundTrack) {
            this.getWoundTrack();
          }
          else {
            this.unitWoundTrack = []
          }
        }
      );
  }

  getWoundTrack() {
    this.codexService.getUnitWoundTrack(this.unitSelector)
      .subscribe(
        (unitWoundTrack) => {
          this.unitWoundTrack = unitWoundTrack;
        }
      )
  }

  showStats(): void {
    if (this.displayStats) {
      this.displayStats = false;
      this.statsButtonText = "Show Stats";
    }
    else {
      this.displayStats = true;
      this.statsButtonText = "Hide Stats";
    }
  }

}
