import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { FormComponent } from './Components/form/form.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { FormsModule } from '@angular/forms';
import { VehiclesStarWarsComponent } from './Components/vehicles-star-wars/vehicles-star-wars.component';
import { VehiclesComponent } from './ui/vehicles/vehicles.component';

@NgModule({
  declarations: [
    AppComponent,
    FormComponent,
    VehiclesStarWarsComponent,
    VehiclesComponent
  ],
  imports: [
    BrowserModule,
    NgbModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
