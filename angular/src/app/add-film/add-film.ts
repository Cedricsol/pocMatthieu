import { Component } from '@angular/core';
import { Film } from '../film';
import { FilmService } from '../film-service';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-add-film',
  imports: [FormsModule, CommonModule],
  templateUrl: './add-film.html',
  styleUrl: './add-film.css',
})
export class AddFilm {
  film: Film = new Film('', '', '');
  message: string = '';

  constructor(private filmService: FilmService) {}

  onSubmit() {
    this.filmService.addFilm(this.film);
    this.message = 'Successfully added Film with name: ' + this.film.name;
    this.film = new Film('', '', '');
  }
}
