package com.poc.spring.film;

import java.util.Collection;

public interface FilmService {
    Collection<Film> getFilms();
    Film addFilm(Film film);
}
