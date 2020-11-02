import { Component, Input, OnInit, SimpleChanges } from '@angular/core';
import { CodexService } from '../codex.service';
import { Unit, Model, ModelStats, WoundTrack } from '../codexInterface';

@Component({
  selector: 'app-unit-card',
  templateUrl: './unit-card.component.html',
  styleUrls: ['./unit-card.component.css']
})
export class UnitCardComponent implements OnInit {

  @Input() unit: Unit;
  @Input() models: Model[];

  constructor(private codexService: CodexService) { }

  ngOnInit(): void {
  }

  ngOnChanges(): void {
    if (this.models) {
      for (let model of this.models) {
        this.codexService.getModelStats(model.id).subscribe(
          (response) => {
            model.stats = response;
          }
        )

        if (model.hasWoundTrack) {
          this.codexService.getWoundTrack(model.id).subscribe(
            (response) => {
              model.woundTrack = response;
            }
          )
        }
      }
    }
  }
}
