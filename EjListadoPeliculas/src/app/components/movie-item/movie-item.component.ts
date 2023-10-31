import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Movie } from 'src/models/MoviePopularList.interface';
import { MovieTopRated } from 'src/models/TopRatedList.interface';

@Component({
  selector: 'app-movie-item',
  templateUrl: './movie-item.component.html',
  styleUrls: ['./movie-item.component.css']
})
export class MovieItemComponent {

  @Input() movie!: Movie | MovieTopRated;
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
