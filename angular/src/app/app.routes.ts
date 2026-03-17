import { Routes } from '@angular/router';
import { ViewFilm } from './view-film/view-film';
import { AddFilm } from './add-film/add-film';
import { ViewBooks } from './view-books/view-books';
import { AddBook } from './add-book/add-book';
import { Home } from './home/home';

export const routes: Routes = [
  { path: 'film/viewFilms', component: ViewFilm },
  { path: 'film/addFilm', component: AddFilm },
  { path: 'book/viewBooks', component: ViewBooks },
  { path: 'book/addBook', component: AddBook },
  { path: '', component: Home },
];
