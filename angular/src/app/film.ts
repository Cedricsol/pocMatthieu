export class Film {
  name: string;
  director: string;
  publishYear: string;

  constructor(filmName: string, filmDirector: string, date: string) {
    this.name = filmName;
    this.director = filmDirector;
    this.publishYear = date;
  }
}
