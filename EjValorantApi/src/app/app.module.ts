import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { AgentListComponent } from './components/agent-list/agent-list.component';
import { HttpClientModule } from '@angular/common/http';
import { AgentItemComponent } from './components/agent-item/agent-item.component';

@NgModule({
  declarations: [
    AppComponent,
    AgentListComponent,
    AgentItemComponent
  ],
  imports: [
    BrowserModule,
    NgbModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
