import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { Observable } from 'rxjs';
import { MoviePopularListResponse } from 'src/models/MoviePopularList.interface';
import { TopRatedListResponse } from 'src/models/TopRatedList.interface';
import { MovieDetail } from 'src/models/MovieDetail.interface';

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  constructor(private http: HttpClient) { }

  getMoviePopularList(): Observable<MoviePopularListResponse> {
    return this.http.get<MoviePopularListResponse>("https://api.themoviedb.org/3/movie/popular?api_key=b415c3bcbd59bc1b962dd0ac536ee99e");
  }

  getTopRatedList(): Observable<TopRatedListResponse> {
    return this.http.get<TopRatedListResponse>("https://api.themoviedb.org/3/movie/top_rated?api_key=b415c3bcbd59bc1b962dd0ac536ee99e");
  }

  getMovieById(id: number): Observable<MovieDetail> {
    return this.http.get<MovieDetail>(`https://api.themoviedb.org/3/movie/${id}?api_key=b415c3bcbd59bc1b962dd0ac536ee99e`);
  }


}
