import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Agent } from 'src/app/models/agent.interface';

@Component({
  selector: 'app-agent-item',
  templateUrl: './agent-item.component.html',
  styleUrls: ['./agent-item.component.css']
})
export class AgentItemComponent {

  @Input() agent!: Agent;
  @Output() clickAgent = new EventEmitter<string>();

  getImage(id: String) {
    return `https://media.valorant-api.com/agents/${id}/displayicon.png`
  }

  getId() {
    return this.agent.uuid;
  }

  viewDetails() {
    this.clickAgent.emit(this.getId());
  }

}
