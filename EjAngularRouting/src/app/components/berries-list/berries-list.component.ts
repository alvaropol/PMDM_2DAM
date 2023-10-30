import { Component, OnInit } from '@angular/core';
import { Berrie } from 'src/app/models/berries-list.interface';
import { BerriesService } from 'src/app/services/berries.service';


@Component({
  selector: 'app-berries-list',
  templateUrl: './berries-list.component.html',
  styleUrls: ['./berries-list.component.css']
})
export class BerriesListComponent {

  constructor(private berriesService: BerriesService) { }

  berriesList: Berrie[] = [];

  ngOnInit(): void {
    this.berriesService.getBerriesList().subscribe(resp => { this.berriesList = resp.results });
  }

  getImage(name: String | undefined) {
    return `https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/${name}-berry.png`
  }

}
