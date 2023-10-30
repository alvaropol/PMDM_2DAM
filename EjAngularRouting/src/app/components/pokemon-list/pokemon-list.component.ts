import { Component, OnInit } from '@angular/core';
import { Pokemon } from 'src/app/models/pokemon-list.interface';
import { PokemonService } from 'src/app/services/pokemon.service';


@Component({
  selector: 'app-pokemon-list',
  templateUrl: './pokemon-list.component.html',
  styleUrls: ['./pokemon-list.component.css']
})
export class PokemonListComponent {


  constructor(private pokemonService: PokemonService) { }

  pokemonList: Pokemon[] = [];

  ngOnInit(): void {
    this.pokemonService.getPokemonList().subscribe(resp => { this.pokemonList = resp.results });
  }

  getImage(name: String | undefined) {
    return `https://img.pokemondb.net/sprites/home/normal/${name}.png`
  }

}
