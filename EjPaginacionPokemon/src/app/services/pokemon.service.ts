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

  getPokemonList(page: number, limit: number): Observable<PokemonListResponse> {
    const offset = (page - 1) * limit;
    const url = `https://pokeapi.co/api/v2/pokemon/?offset=${offset}&limit=${limit}`;
    return this.http.get<PokemonListResponse>(url);
  }

  getPokemonById(id: number): Observable<PokemonDetail> {
    return this.http.get<PokemonDetail>(`https://pokeapi.co/api/v2/pokemon/${id}/`);
  }

}
