import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { Film } from '../film';
import { FilmService } from '../film-service';

@Component({
  selector: 'app-view-film',
  imports: [CommonModule],
  templateUrl: './view-film.html',
  styleUrls: ['../tables.css', './view-film.css'],
  standalone: true,
})
export class ViewFilm {
  films: Film[] = [];

  constructor(private filmService: FilmService) {
    this.films = filmService.getFilms();
  }
}
