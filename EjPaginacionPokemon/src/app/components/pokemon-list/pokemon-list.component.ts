import { Component, OnInit, ViewChild } from '@angular/core';
import { FormControl } from '@angular/forms';
import { debounceTime, switchMap, startWith, map } from 'rxjs/operators';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { PokemonService } from 'src/app/services/pokemon.service';
import { Pokemon } from '../../models/pokemon-list.interface';
import { PokemonDetail } from 'src/app/models/pokemon-detail.interface';

@Component({
  selector: 'app-pokemon-list',
  templateUrl: './pokemon-list.component.html',
  styleUrls: ['./pokemon-list.component.css']
})
export class PokemonListComponent implements OnInit {
  @ViewChild('auto') autocomplete: any;

  pokemonList: Pokemon[] = [];
  pokemonCtrl = new FormControl();
  filteredPokemons: Pokemon[] = [];
  selectedPokemon: PokemonDetail | undefined;
  currentPage = 1;

  constructor(private pokemonService: PokemonService, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.loadNewPage();
    this.setupAutocomplete();
  }

  setupAutocomplete() {
    this.pokemonCtrl.valueChanges
      .pipe(
        startWith(''),
        debounceTime(300),
        switchMap((value) => this.pokemonService.getPokemonList(value)),
        map((response) => response.results)
      )
      .subscribe((results) => {
        this.filteredPokemons = results;
      });
  }

  openModal(id: number, content: any) {
    this.pokemonService.getPokemonById(id).subscribe(resp => {
      this.selectedPokemon = resp;
      this.modalService.open(content);
    });
  }

  getImage(name: String | undefined) {
    return `https://img.pokemondb.net/sprites/home/normal/${name}.png`;
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