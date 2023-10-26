import { Component } from '@angular/core';
import { Agent } from '../../models/agent.interface'
import { AgentDetail } from '../../models/agent-detail.interface'
import { AgentService } from 'src/app/services/agent.service'
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-agent-list',
  templateUrl: './agent-list.component.html',
  styleUrls: ['./agent-list.component.css']
})
export class AgentListComponent {

  agentList: Agent[] = [];
  constructor(private AgentService: AgentService, private modalService: NgbModal) { }
  selectedAgent: AgentDetail | undefined;

  ngOnInit(): void {
    this.AgentService.getAgentList().subscribe(resp => {
      this.agentList = resp.data;
    });
  }

  openModal(id: string, content: any) {
    this.AgentService.getAgentById(id).subscribe(resp => {
      this.selectedAgent = resp.data;
    });
    this.modalService.open(content)
  }
  getImage(id: String | undefined) {
    return `https://media.valorant-api.com/agents/${id}/displayicon.png`
  }
}