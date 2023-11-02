import { Component, OnInit } from '@angular/core';
import { MovieService } from 'src/app/services/movie.service';
import { MoviePopular } from 'src/app/models/movie-popular-list.interface';

@Component({
  selector: 'app-movie-list',
  templateUrl: './movie-list.component.html',
  styleUrls: ['./movie-list.component.css']
})
export class MovieListComponent implements OnInit {

  constructor(private movieService: MovieService) { }

  moviePopularList: MoviePopular[] = [];

  ngOnInit(): void {
    this.movieService.getPopularList().subscribe(resp => {
      this.moviePopularList = resp.results;
    });
  }

  getImage(poster_path: String | undefined) {
    return `https://image.tmdb.org/t/p/w500${poster_path}`;
  }

}
