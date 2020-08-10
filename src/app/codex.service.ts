import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';
import { MessageService } from './message.service';
import { UnitStats, UnitWoundTrack } from './unit';

@Injectable({
  providedIn: 'root'
})

export class CodexService {

  private apiUrl = "http://localhost:5300";

  constructor(
    private http: HttpClient,
    private messageService: MessageService,
  ) { }

  private log(message: string) {
    this.messageService.add(`CodexService: ${message}`);
  }

  private handleError<T>(method = "method", result?: T) {
    return (error: any): Observable<T> => {

      this.log(`${method} failed: ${error.message}`);

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }

  getFactionList(): Observable<string[]> {
    this.log("fetching Factions");
    return this.http.get<string[]>(`${this.apiUrl}/fetchFactionList`)
      .pipe(
        tap(_ => this.log("fetched Factions")),
        catchError(this.handleError<string[]>('getFactionList', [])),
      );
  }

  getRoleList(): string[] {
    this.log("fetched Roles");
    return [
      "Any",
      "HQ",
      "Troops",
      "Elites",
      "Fast Attack",
      "Heavy Support",
      "Dedicated Transport",
      "Flyer",
      "Fortification",
      "Lord of War"
    ]
  }

  getUnitList(faction: string, role: string): Observable<string[]> {
    this.log("fetching Units");
    return this.http.post<string[]>(`${this.apiUrl}/fetchUnitList`, {"faction": faction, "role": role})
      .pipe(
        tap(_ => this.log("fetched Units"),
        catchError(this.handleError<string[]>('getUnitList', [])))
      )
  }

  getUnit() {
    // request.open("POST", "/getUnit")
    // request.setRequestHeader("Content-Type", "application/json");
    // request.send(JSON.stringify({ "unit": unitName }))
  }

  getSubfactionsList(faction: string): Observable<string[]> {
    this.log("fetching Subfactions");
    return this.http.post<string[]>(`${this.apiUrl}/fetchSubfactions`, { "faction": faction })
      .pipe(
        tap(_ => this.log("fetched Subfactions")),
        catchError(this.handleError<string[]>('getSubfactionsList', []))
      )
  }


  getStats(unit: string): Observable<UnitStats[]> {
    this.log(`fetching Stats for ${unit}`)
    return this.http.post<UnitStats[]>(`${this.apiUrl}/fetchUnitStats`, { "unit": unit })
      .pipe(
        tap(_ => this.log("fetched Stats")),
        catchError(this.handleError<UnitStats[]>('getStats', []))
      )
  }

  getUnitWoundTrack(unit: string): Observable<UnitWoundTrack[]> {
    this.log(`fetching Unit Wound Track for ${unit}`);
    return this.http.post<UnitWoundTrack[]>(`${this.apiUrl}/fetchUnitWoundTrack`, {"unit": unit})
      .pipe(
        tap(_ => this.log("fetched Unit Wound Track")),
        catchError(this.handleError<UnitWoundTrack[]>('getUnitWoundTrack', []))
      )
  }

  getArmy() {
    // request.open("POST", "/getArmy")
    // request.send()
  }

  getStratagems() {
    // request.open("POST", "/getStratagems")
    // request.send()
  }

  getStratagemDetails(stratagemID, callback) {
    // request.open("POST", "/getStratagemDetails")
    // request.setRequestHeader("Content-Type", "application/json");
    // request.send(JSON.stringify({ "stratagemID": parseInt(stratagemID) }))
  }
}