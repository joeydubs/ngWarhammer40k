import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';
import { MessageService } from './message.service';

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
    //request.open("POST", "/getFactionList")
    //request.send()
    this.messageService.add("CodexService: fetching Factions")
    return this.http.get<string[]>(`${this.apiUrl}/fetchFactionList`)
      .pipe(
        tap(_ => this.log("fetched Factions")),
        catchError(this.handleError<string[]>('getFactionList', [])),
      );
  }

  getUnitList() {
    // request.open("POST", "/getUnitList")
    // request.setRequestHeader("Content-Type", "application/json")
    // request.send(JSON.stringify({ "faction": selectedFaction, "role": selectedRole }))
  }

  getUnit() {
    // request.open("POST", "/getUnit")
    // request.setRequestHeader("Content-Type", "application/json");
    // request.send(JSON.stringify({ "unit": unitName }))
  }

  getSubfactions(faction) {
    // request.open("POST", "/getSubfactions")
    // request.setRequestHeader("Content-Type", "application/json")
    // request.send(JSON.stringify({ "faction": faction }))
  }


  getStats() {
    // request.open("POST", "/getModelStats")
    // request.setRequestHeader("Content-Type", "application/json");
    // request.send(JSON.stringify({ "model": document.getElementById("unit-selector").value }))
  }

  getModelWoundTrack(model) {
    // request.open("POST", "/getModelWoundTrack")
    // request.setRequestHeader("Content-Type", "application/json");
    // request.send(JSON.stringify({ "model": model }))
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