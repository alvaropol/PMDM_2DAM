import { Component, EventEmitter, Input, Output } from '@angular/core';
import { MoviePopular } from 'src/app/models/movie-popular-list.interface';

@Component({
  selector: 'app-movie-item',
  templateUrl: './movie-item.component.html',
  styleUrls: ['./movie-item.component.css']
})
export class MovieItemComponent {

  @Input() movie!: MoviePopular;
  @Output() clickMovie = new EventEmitter<number>();

  getImage(poster_path: String | undefined) {
    return `https://image.tmdb.org/t/p/w500${poster_path}`;
  }

  viewDetails() {
    this.clickMovie.emit(this.movie.id);
  }

  toUpperCase(title: String) {
    title = title[0].toUpperCase() + title.substring(1);
    return title;
  }
}
