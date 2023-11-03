import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { MovieListComponent } from './components/movie-list/movie-list.component';
import { HomePageComponent } from './ui/home-page/home-page.component';
import { DetailpageComponent } from './ui/detailpage/detailpage.component';

const routes: Routes = [
  { path: 'movies', component: HomePageComponent },
  { path: 'detail/:id', component: DetailpageComponent },
  { path: '', pathMatch: 'full', redirectTo: '/movies' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
