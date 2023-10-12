import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { ComponentCarComponent } from './component-car/component-car.component';
import { RestaurantCardComponentComponent } from './restaurant-card-component/restaurant-card-component.component';

@NgModule({
  declarations: [
    AppComponent,
    ComponentCarComponent,
    RestaurantCardComponentComponent,
  ],
  imports: [
    BrowserModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
