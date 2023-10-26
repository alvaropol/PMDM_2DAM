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

  ngOnInit(): void {
    this.pokemonService.getPokemonList().subscribe(resp => {
      this.pokemonList = resp.results;
    });
  }

  openModal(id: number, content: any) {
    this.pokemonService.getPokemonById(id).subscribe(resp => {
      this.selectedPokemon = resp.data;
    });
    this.modalService.open(content)
  }

  getImage(name: String | undefined) {
    return `https://img.pokemondb.net/sprites/home/normal/${name}.png`
  }

}
