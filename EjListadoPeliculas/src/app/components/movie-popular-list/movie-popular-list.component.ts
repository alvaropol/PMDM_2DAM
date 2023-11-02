import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { MovieService } from 'src/app/services/movie.service';
import { MovieDetail } from 'src/models/MovieDetail.interface';
import { Movie } from 'src/models/MoviePopularList.interface';

@Component({
  selector: 'app-movie-popular-list',
  templateUrl: './movie-popular-list.component.html',
  styleUrls: ['./movie-popular-list.component.css']
})
export class MoviePopularListComponent implements OnInit {

  moviePopularList: Movie[] = [];
  selectedMovie!: MovieDetail;

  constructor(private movieService: MovieService, private modalService: NgbModal) { };

  ngOnInit(): void {
    this.movieService.getMoviePopularList().subscribe(resp => { this.moviePopularList = resp.results });
  }

  openModal(id: number, content: any) {
    this.movieService.getMovieById(id).subscribe(resp => {
      this.selectedMovie = resp;
      this.modalService.open(content);
    });
  }

  getImage(poster_path: String | undefined) {
    return `https://image.tmdb.org/t/p/w500${poster_path}`;
  }
}
