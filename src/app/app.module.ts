import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';


import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { UnitListComponent } from './unit-list/unit-list.component';
import { MyArmyComponent } from './my-army/my-army.component';
import { MessagesComponent } from './messages/messages.component';
import { UnitStatsComponent } from './unit-stats/unit-stats.component';
import { UnitOptionsComponent } from './unit-options/unit-options.component';

@NgModule({
  declarations: [
    AppComponent,
    UnitListComponent,
    MyArmyComponent,
    MessagesComponent,
    UnitStatsComponent,
    UnitOptionsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
