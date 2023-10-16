import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { ToolbarComponent } from './ui/toolbar/toolbar.component';
import { HomeScreenComponent } from './ui/home-screen/home-screen.component';
import { TextComponent } from './ui/text/text.component';

@NgModule({
  declarations: [
    AppComponent,
    ToolbarComponent,
    HomeScreenComponent,
    TextComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
