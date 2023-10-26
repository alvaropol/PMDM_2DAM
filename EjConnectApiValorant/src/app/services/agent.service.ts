import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { ListAgentResponse } from '../models/agent.interface'
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AgentService {

  constructor(private http: HttpClient) { }

  getAgentList(): Observable<ListAgentResponse> {
    return this.http.get<ListAgentResponse>('https://valorant-api.com/v1/agents');
  }


}
