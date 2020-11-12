import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';
import { MessageService } from './message.service';
import { Faction, Detachment, DetachmentSlot, Role, Unit, Subfaction, ModelStats, Model, Keyword, FactionKeyword, Wargear, WargearStats } from './codexInterface';

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
    let options = { "params": { "factionId": String(factionId), "roleId": String(roleId) } }
    return this.http.get<Unit[]>(`${this.apiUrl}/getUnitList`, options)
      .pipe(
        tap(_ => this.log("fetched Units"),
        catchError(this.handleError<Unit[]>('getUnitList', [])))
      )
  }

  getUnitDetails(unitId: number): Observable<Unit> {
    this.log("fetching Unit Details");
    let options = { "params": { "unitId": String(unitId) } }
    return this.http.get<Unit>(`${this.apiUrl}/getUnitDetails`, options)
      .pipe(
        tap(_ => this.log("fetched Unit Details"),
        catchError(this.handleError<Unit>('getUnitDetails')))
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

  getModels(unitId: number): Observable<Model[]> {
    this.log("fetching Models");
    let options = { "params": {"unitId": String(unitId)} };
    return this.http.get<Model[]>(`${this.apiUrl}/getModels`, options)
      .pipe(
        tap(_ => this.log("fetched Models")),
        catchError(this.handleError<Model[]>('getModels', []))
      )
  }

  getModelStats(modelId: number): Observable<ModelStats[]> {
    this.log("fetching Model Stats");
    let options = { "params": {"modelId": String(modelId)} };
    return this.http.get<ModelStats[]>(`${this.apiUrl}/getModelStats`, options)
      .pipe(
        tap(_ => this.log("fetched Model Stats")),
        catchError(this.handleError<ModelStats[]>('getModelStats', []))
      )
  }

  getModelWargear(modelId: number): Observable<Wargear[]> {
    this.log("fetching Model Wargear");
    let options = { "params": { "modelId": String(modelId) } };
    return this.http.get<Wargear[]>(`${this.apiUrl}/getModelWargear`, options)
      .pipe(
        tap(_ => this.log("fetched Model Wargear")),
        catchError(this.handleError<Wargear[]>('getModelWargear', []))
      )
  }

  getWargearStats(wargearId: number): Observable<WargearStats[]> {
    this.log("fetching Wargear Stats");
    let options = { "params": { "wargearId": String(wargearId) } };
    return this.http.get<WargearStats[]>(`${this.apiUrl}/getWargearStats`, options)
      .pipe(
        tap(_ => this.log("fetched Wargear Stats")),
        catchError(this.handleError<WargearStats[]>('getWargearStats'))
      )
  }

  getWargearOptions(modelId: number): Observable<string[]> {
    this.log(`fetching Wargear Options`);
    let options = { "params": {"modelId": String(modelId)} };
    return this.http.get<string[]>(`${this.apiUrl}/getWargearOptions`, options)
      .pipe(
        tap(_ => this.log("fetched Wargear Options")),
        catchError(this.handleError<string[]>('getWargearOptions', []))
      )
  }

  getKeywords(unitId: number): Observable<Keyword[]> {
    this.log("fetching Keywords");
    let options = { "params": { "unitId": String(unitId) } }
    return this.http.get<Keyword[]>(`${this.apiUrl}/getKeywords`, options)
      .pipe(
        tap(_ => this.log("fetched Keywords")),
        catchError(this.handleError<Keyword[]>('getKeywords', []))
      )
  }

  getFactionKeywords(unitId: number): Observable<FactionKeyword[]> {
    this.log("fetching FactionKeywords");
    let options = { "params": { "unitId": String(unitId) } }
    return this.http.get<FactionKeyword[]>(`${this.apiUrl}/getFactionKeywords`, options)
      .pipe(
        tap(_ => this.log("fetched FactionKeywords")),
        catchError(this.handleError<FactionKeyword[]>('getFactionKeywords', []))
      )
  }
}