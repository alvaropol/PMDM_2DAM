import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { PlanetListComponent } from './components/planet-list/planet-list.component';
import { PlanetItemComponent } from './components/planet-item/planet-item.component';

@NgModule({
  declarations: [
    AppComponent,
    PlanetListComponent,
    PlanetItemComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
