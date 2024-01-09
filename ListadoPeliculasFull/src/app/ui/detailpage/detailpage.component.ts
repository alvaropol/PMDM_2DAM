import { Component, OnInit, inject } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { ActivatedRoute } from '@angular/router';
import { MovieDetail } from 'src/app/models/movie-detail.interface';
import { Trailer } from 'src/app/models/trailer-list.interface';
import { MovieService } from 'src/app/services/movie.service';

@Component({
  selector: 'app-detailpage',
  templateUrl: './detailpage.component.html',
  styleUrls: ['./detailpage.component.css']
})
export class DetailpageComponent implements OnInit {

  route: ActivatedRoute = inject(ActivatedRoute);
  idMovie: number = 0;
  selectedMovie!: MovieDetail;
  trailerOfMovie: Trailer | undefined;

  constructor(private movieService: MovieService, private sanitazer: DomSanitizer) {
    this.idMovie = this.route.snapshot.params['id'];
  }

  ngOnInit(): void {
    this.movieService.getMovieById(this.idMovie).subscribe(resp => {
      this.selectedMovie = resp;
      this.movieService.getListVideoByIdMovie(this.idMovie).subscribe(trailers => {
        this.trailerOfMovie = trailers.results[0];
      });
    });
  }

  getImage(poster_path: String | undefined) {
    return `https://image.tmdb.org/t/p/w500${poster_path}`;
  }

  getAdult(condition: boolean): String {
    if (condition)
      return "Yes"
    else
      return "No"
  }

  getTrailerURL(video: Trailer | undefined) {
    if (video?.site == 'YouTube') {
      return this.sanitazer.bypassSecurityTrustResourceUrl(`https://www.youtube.com/embed/${video.key}`);
    } else {
      return this.sanitazer.bypassSecurityTrustResourceUrl(`https://player.vimeo.com/video/${video?.key}`);
    }
  }

}
