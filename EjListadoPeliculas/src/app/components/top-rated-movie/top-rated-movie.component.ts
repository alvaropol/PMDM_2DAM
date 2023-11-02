import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { MovieService } from 'src/app/services/movie.service';
import { MovieDetail } from 'src/models/MovieDetail.interface';
import { MovieTopRated } from 'src/models/TopRatedList.interface';

@Component({
  selector: 'app-top-rated-movie',
  templateUrl: './top-rated-movie.component.html',
  styleUrls: ['./top-rated-movie.component.css']
})
export class TopRatedMovieComponent implements OnInit {

  movieTopRatedList: MovieTopRated[] = [];
  selectedMovie!: MovieDetail;

  constructor(private movieService: MovieService, private modalService: NgbModal) { };

  ngOnInit(): void {
    this.movieService.getTopRatedList().subscribe(resp => { this.movieTopRatedList = resp.results });
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
