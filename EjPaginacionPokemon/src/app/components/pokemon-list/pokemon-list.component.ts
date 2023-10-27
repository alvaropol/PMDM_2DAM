import { Component, OnInit } from '@angular/core';
import { Pokemon, PokemonListResponse } from '../../models/pokemon-list.interface';
import { PokemonDetail } from '../../models/pokemon-detail.interface';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { PokemonService } from 'src/app/services/pokemon.service';


@Component({
  selector: 'app-pokemon-list',
  templateUrl: './pokemon-list.component.html',
  styleUrls: ['./pokemon-list.component.css']
})
export class PokemonListComponent {

  pokemonList: Pokemon[] = [];
  constructor(private pokemonService: PokemonService, private modalService: NgbModal) { }
  selectedPokemon: PokemonDetail | undefined;
  currentPage = 1;

  ngOnInit(): void {
    this.loadNewPage();
  }

  openModal(id: number, content: any) {
    this.pokemonService.getPokemonById(id).subscribe(resp => {
      this.selectedPokemon = resp;
      this.modalService.open(content)
    });
  }

  getImage(name: String | undefined) {
    return `https://img.pokemondb.net/sprites/home/normal/${name}.png`
  }

  toUpperCase(name: String | undefined) {
    if (name === undefined) {
      return undefined;
    }
    name = name[0].toUpperCase() + name.substring(1);
    return name;
  }

  loadNewPage(): void {
    this.pokemonService.getPokemonList(this.currentPage).subscribe(resp => { this.pokemonList = resp.results });
  }
}
