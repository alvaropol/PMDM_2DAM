import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Pokemon } from 'src/app/models/pokemon-list.interface';


@Component({
  selector: 'app-pokemon-item',
  templateUrl: './pokemon-item.component.html',
  styleUrls: ['./pokemon-item.component.css']
})
export class PokemonItemComponent {

  @Input() pokemon!: Pokemon;
  @Output() clickPokemon = new EventEmitter<number>();

  getId(url: String) {
    return Number(url.split('/').reverse()[1]);
  }

  getImage(name: String | undefined) {
    return `https://img.pokemondb.net/sprites/home/normal/${name}.png`
  }

  viewDetails() {
    this.clickPokemon.emit(this.getId(this.pokemon.url));
  }

  toUpperCase(name: String) {
    name = name[0].toUpperCase() + name.substring(1);
    return name;
  }
}
