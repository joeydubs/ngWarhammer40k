import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { UnitListComponent } from './unit-list/unit-list.component';
import { MyArmyComponent } from './my-army/my-army.component';
import { ForgeComponent } from './forge/forge.component';


const routes: Routes = [
  { path: '', redirectTo: '/my-army', pathMatch: 'full' },
  { path: 'forge', component: ForgeComponent },
  { path: 'unit-list', component: UnitListComponent },
  { path: 'my-army', component: MyArmyComponent },
  { path: '**', redirectTo: '' }
]

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})

export class AppRoutingModule { }
