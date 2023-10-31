import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { PageHomeComponent } from './ui/page-home/page-home.component';
import { MoviePopularListComponent } from './components/movie-popular-list/movie-popular-list.component';
import { MovieItemComponent } from './components/movie-item/movie-item.component';
import { TopRatedMovieComponent } from './components/top-rated-movie/top-rated-movie.component';
import { HttpClientModule } from '@angular/common/http';



@NgModule({
  declarations: [
    AppComponent,
    PageHomeComponent,
    MoviePopularListComponent,
    MovieItemComponent,
    TopRatedMovieComponent
  ],
  imports: [
    BrowserModule,
    NgbModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
