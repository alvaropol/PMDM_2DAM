import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { MoviePopularListResponse } from '../models/movie-popular-list.interface';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  constructor(private http: HttpClient) { }

  getPopularList(): Observable<MoviePopularListResponse> {
    return this.http.get<MoviePopularListResponse>("https://api.themoviedb.org/3/movie/popular?api_key=b415c3bcbd59bc1b962dd0ac536ee99e");
  }
}
