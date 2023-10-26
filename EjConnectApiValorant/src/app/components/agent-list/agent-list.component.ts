import { Component } from '@angular/core';
import { Datum } from '../../models/agent.interface'
import { AgentService } from 'src/app/services/agent.service'


@Component({
  selector: 'app-agent-list',
  templateUrl: './agent-list.component.html',
  styleUrls: ['./agent-list.component.css']
})
export class AgentListComponent {

  agentList: Datum[] = [];

  constructor(private AgentService: AgentService) { }

  ngOnInit(): void {
    this.AgentService.getAgentList().subscribe(resp => {
      this.agentList = resp.data;
    });
  }
}
