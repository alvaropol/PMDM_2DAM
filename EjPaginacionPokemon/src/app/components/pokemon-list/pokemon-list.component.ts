import { Component } from '@angular/core';
import { Pokemon } from '../../models/pokemon-list.interface';
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
  currentPage: number = 1;


  ngOnInit(): void {
    this.pokemonService.getPokemonList(this.currentPage, 20).subscribe(resp => {
      this.pokemonList = resp.results;
    });
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

  previousPage() {
    if (this.currentPage > 1) {
      this.currentPage--;
    }
  }

  nextPage() {
    if (this.currentPage < this.getTotalPages()) {
      this.currentPage++;
    }
  }

  getTotalPages(): number {
    const itemsPerPage = 20;
    return Math.ceil(this.pokemonList.length / itemsPerPage);
  }
}
