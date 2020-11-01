import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';
import { MessageService } from './message.service';
import { UnitStats, UnitWoundTrack } from './unit';
import { Faction, Detachment, DetachmentSlot, Role, Unit, Subfaction } from './codexInterface';

@Injectable({
  providedIn: 'root'
})

export class CodexService {

  //private apiUrl = "https://ng40k.duckdns.org:5300";
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

  getDetachmentList(): Observable<Detachment[]> {
    this.log("fetching Detachments");
    return this.http.get<Detachment[]>(`${this.apiUrl}/getDetachmentList`)
      .pipe(
        tap(_ => this.log("fetched Detachments")),
        catchError(this.handleError<Detachment[]>('getDetachmentList', []))
      );
  }

  getDetachmentSlots(detachmentId: number): Observable<{ string: DetachmentSlot }> {
    this.log("fetching Detachment Slots");
    let options = { "params": { "detachmentId": String(detachmentId) } }
    return this.http.get<{ string: DetachmentSlot }>(`${this.apiUrl}/getDetachmentSlots`, options)
      .pipe(
        tap(_ => this.log("fetched Detachment Slots")),
        catchError(this.handleError<{ string: DetachmentSlot }>('getDetachmentSlots', null))
      );
  }

  getFactionList(): Observable<Faction[]> {
    this.log("fetching Factions");
    return this.http.get<Faction[]>(`${this.apiUrl}/getFactionList`)
      .pipe(
        tap(_ => this.log("fetched Factions")),
        catchError(this.handleError<Faction[]>('getFactionList', [])),
      );
  }

  getRoleList(): Observable<Role[]> {
    this.log("fetched Roles");
    return this.http.get<Role[]>(`${this.apiUrl}/getRoleList`)
      .pipe(
        tap( _ => this.log("fetched Roles")),
        catchError(this.handleError<Faction[]>('getRoleList', []))
      );
  }

  getUnitList(factionId: number, roleId: number): Observable<Unit[]> {
    this.log("fetching Units");
    console.log("roleId: " + roleId);
    let options = { "params": { "factionId": String(factionId), "roleId": String(roleId) } }
    return this.http.get<Unit[]>(`${this.apiUrl}/getUnitList`, options)
      .pipe(
        tap(_ => this.log("fetched Units"),
        catchError(this.handleError<Unit[]>('getUnitList', [])))
      )
  }

  getUnit(unitId: number): Observable<Unit> {
    this.log("fetching Unit");
    let options = { "params": { "unitId": String(unitId) } }
    return this.http.get<Unit>(`${this.apiUrl}/getUnit`, options)
      .pipe(
        tap(_ => this.log("fetched Units"),
        catchError(this.handleError<Unit>('getUnit')))
      )
  }

  getSubfactionList(factionId: number): Observable<Subfaction[]> {
    this.log("fetching Subfactions");
    let options = { "params": {"factionId": String(factionId)} }
    return this.http.get<Subfaction[]>(`${this.apiUrl}/getSubfactionList`, options)
      .pipe(
        tap(_ => this.log("fetched Subfactions")),
        catchError(this.handleError<Subfaction[]>('getSubfactionList', []))
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