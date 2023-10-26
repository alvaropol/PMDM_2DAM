import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { ListAgentResponse } from '../models/agent.interface';
import { Observable } from 'rxjs';
import { AgentDetailResponse } from '../models/agent-detail.interface';

@Injectable({
  providedIn: 'root'
})
export class AgentService {

  constructor(private http: HttpClient) { }

  getAgentList(): Observable<ListAgentResponse> {
    return this.http.get<ListAgentResponse>('https://valorant-api.com/v1/agents');
  }

  getAgentById(id: string): Observable<AgentDetailResponse> {
    return this.http.get<AgentDetailResponse>(`https://valorant-api.com/v1/agents/${id}`);
  }

}
