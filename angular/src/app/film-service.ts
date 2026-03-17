import { Injectable } from '@angular/core';
import { Film } from './film';

@Injectable({
  providedIn: 'root',
})
export class FilmService {
  films: Film[] = [];

  getFilms() {
    return this.films;
  }

  addFilm(film: Film) {
    this.films.push(film);
  }
}
