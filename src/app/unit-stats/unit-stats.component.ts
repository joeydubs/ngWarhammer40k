import { Component, OnInit, Input } from '@angular/core';
import { UnitStats, UnitWoundTrack } from '../unit';

@Component({
  selector: 'app-unit-stats',
  templateUrl: './unit-stats.component.html',
  styleUrls: ['./unit-stats.component.css']
})

export class UnitStatsComponent implements OnInit {

  @Input() unitStats: UnitStats[];
  @Input() unitWoundTrack: UnitWoundTrack[];

  constructor() { }

  ngOnInit(): void {
  }

}
