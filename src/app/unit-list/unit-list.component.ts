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

  constructor() { }

  ngOnInit(): void {
  }
  
}
