import { Component, Input, OnInit, SimpleChanges } from '@angular/core';
import { forkJoin, from, of } from 'rxjs';
import { mergeMap, switchMap } from 'rxjs/operators';
import { CodexService } from '../codex.service';
import { Unit, Model, Wargear, WargearStats } from '../codexInterface';

@Component({
  selector: 'app-unit-card',
  templateUrl: './unit-card.component.html',
  styleUrls: ['./unit-card.component.css']
})
export class UnitCardComponent implements OnInit {

  @Input() unit: Unit;
  @Input() models: Model[];
  weapons: Wargear[];
  otherWargear: Wargear[];
  unitHasOptions: boolean;

  constructor(private codexService: CodexService) { }

  ngOnInit(): void {
  }

  ngOnChanges(): void {
    if (this.models) {
      this.weapons = [];
      this.otherWargear = [];

      for (let model of this.models) {
        this.codexService.getModelStats(model.id).subscribe(
          (response) => {
            model.stats = response;
          }
        )

        this.codexService.getModelWargear(model.id).pipe(
          switchMap(wargear => {
            model.wargear = wargear;
            return from(wargear);
          }),
          mergeMap((wargear, index) => {
            return forkJoin([
              of(index),
              this.codexService.getWargearStats(wargear.id)
            ])
          })
        ).subscribe(
          (response) => {
            let index = response[0] as number;
            let stats = response[1] as WargearStats[];
            let wargear = model.wargear[index];

            wargear.stats = stats;

            if (wargear.typeName == "Weapon") {
              this.weapons.push(wargear);
            }
            else {
              this.otherWargear.push(wargear);
            }
          }
        )

        if (model.hasOptions) {
          this.unitHasOptions = true;

          this.codexService.getWargearOptions(model.id).subscribe(
            (response) => {
              model.wargearOptions = response;
            }
          )
        }
      }
    }
  }

  get keywords() { return this.unit.keywords.map(keyword => keyword.name).join(', '); }
  get factionKeywords() { return this.unit.factionKeywords.map(factionKeyword => factionKeyword.name).join(', '); }
}
