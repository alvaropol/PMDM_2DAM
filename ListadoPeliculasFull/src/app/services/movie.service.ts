import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { MoviePopularListResponse } from '../models/movie-popular-list.interface';
import { Observable } from 'rxjs';
import { MovieDetail } from '../models/movie-detail.interface';
import { TrailerListResponse } from '../models/trailer-list.interface';

const API_KEY = 'b415c3bcbd59bc1b962dd0ac536ee99e'
const BASE_MOVIE_URL = 'https://api.themoviedb.org/3/movie'

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  constructor(private http: HttpClient) { }

  getPopularList(page: number): Observable<MoviePopularListResponse> {
    return this.http.get<MoviePopularListResponse>(`${BASE_MOVIE_URL}/popular?api_key=${API_KEY}&page=${page}`);
  }

  getMovieById(id: number): Observable<MovieDetail> {
    return this.http.get<MovieDetail>(`${BASE_MOVIE_URL}/${id}?api_key=${API_KEY}`);
  }

  getListVideoByIdMovie(id: number): Observable<TrailerListResponse> {
    return this.http.get<TrailerListResponse>(`${BASE_MOVIE_URL}/${id}/videos?api_key=${API_KEY}`);
  }
}
