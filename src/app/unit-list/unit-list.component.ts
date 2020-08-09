import { Component, OnInit } from '@angular/core';
import { CodexService } from '../codex.service';

@Component({
  selector: 'app-unit-list',
  templateUrl: './unit-list.component.html',
  styleUrls: ['./unit-list.component.css']
})
export class UnitListComponent implements OnInit {

  factions: string[];

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

}
