import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { Observable } from 'rxjs';
import { PokemonListResponse } from '../models/pokemon-list.interface';
import { PokemonDetail } from '../models/pokemon-detail.interface';

@Injectable({
  providedIn: 'root'
})
export class PokemonService {

  constructor(private http: HttpClient) { }

  getPokemonList(page: number): Observable<PokemonListResponse> {
    return this.http.get<PokemonListResponse>(`https://pokeapi.co/api/v2/pokemon?offset=${(page - 1) * 20}&limit=20`);
  }

  getPokemonById(id: number): Observable<PokemonDetail> {
    return this.http.get<PokemonDetail>(`https://pokeapi.co/api/v2/pokemon/${id}/`);
  }

}
