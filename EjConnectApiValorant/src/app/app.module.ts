import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http'

import { AppComponent } from './app.component';
import { AgentListComponent } from './components/agent-list/agent-list.component';
import { AgentItemComponent } from './components/agent-item/agent-item.component';

@NgModule({
  declarations: [
    AppComponent,
    AgentListComponent,
    AgentItemComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
