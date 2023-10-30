import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PokemonListComponent } from './components/pokemon-list/pokemon-list.component';
import { BerriesListComponent } from './components/berries-list/berries-list.component';

const routes: Routes = [
  { path: 'pokemon', component: PokemonListComponent },
  { path: 'berrie', component: BerriesListComponent },
  { path: '', pathMatch: 'full', redirectTo: '/pokemon' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
