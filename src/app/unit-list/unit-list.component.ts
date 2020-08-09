import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
import { CodexService } from '../codex.service';

@Component({
  selector: 'app-unit-list',
  templateUrl: './unit-list.component.html',
  styleUrls: ['./unit-list.component.css']
})
export class UnitListComponent implements OnInit {

  roleSelectorDisabled = true;
  unitSelectorDisabled = true;
  subfactionSelectorDisabled = true;
  getStatsDisabled = true;
  saveUnitDisabled = true;

  factionSelector: string;
  roleSelector: string;
  unitSelector: string;
  subfactionSelector: string;

  factions: string[];
  roles: string[];
  units: string[];
  subfactions: string[];

  constructor(
    private codexService: CodexService
  ) { }

  ngOnInit(): void {
    this.getFactions();
  }

  getFactions(): void {
    this.codexService.getFactionList()
      .subscribe(factions => this.factions = factions);
  }

  getRoles(): void {
    this.roles = this.codexService.getRoleList();
    this.roleSelectorDisabled = false;
  }

  getUnits(): void {
    this.codexService.getUnitList(this.factionSelector, this.roleSelector)
      .subscribe(
        (units) => {
          this.units = units
          this.unitSelectorDisabled = false;
        });
  }
  
  getSubfactions(): void {
    this.codexService.getSubfactionsList(this.factionSelector)
      .subscribe(
        (subfactions) => {
          this.subfactions = subfactions
          // TODO: Add conditional logic to preselect subfaction if not optional
          // TODO: Add conditional logic to skip subfaction if not needed
          this.subfactionSelectorDisabled = false;
          this.getStatsDisabled = false;
          this.saveUnitDisabled = false;
        });
  }

}
