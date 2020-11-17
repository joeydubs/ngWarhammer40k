import { Component, Input, OnInit, SimpleChanges } from '@angular/core';
import { CodexService } from '../codex.service';
import { Unit, Model, Wargear } from '../codexInterface';

@Component({
  selector: 'app-unit-card',
  templateUrl: './unit-card.component.html',
  styleUrls: ['./unit-card.component.css']
})
export class UnitCardComponent implements OnInit {

  @Input() unit: Unit;
  @Input() models: Model[];
  @Input() hasOptions: boolean;
  @Input() weapons: Wargear[];
  @Input() otherWargear: Wargear[];

  constructor(private codexService: CodexService) { }

  ngOnInit(): void {
  }

  get factionKeywords() { return this.unit.factionKeywords.map(factionKeyword => factionKeyword.name).join(', '); }

  keywords(index: number) {
    return this.models[index].keywords.map(keywords => keywords.name).join(', '); 
  }
}
