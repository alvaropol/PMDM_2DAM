import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { HttpClientModule } from '@angular/common/http';
import { PokemonListComponent } from './components/pokemon-list/pokemon-list.component';
import { PokemonItemComponent } from './components/pokemon-item/pokemon-item.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations'




@NgModule({
  declarations: [
    AppComponent,
    PokemonListComponent,
    PokemonItemComponent
  ],
  imports: [
    BrowserModule,
    NgbModule,
    HttpClientModule,
    BrowserAnimationsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
