package com.poc.spring.film;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class FilmServiceImpl implements FilmService {
    private final List<Film> films = new ArrayList<>();

    @Override
    public Collection<Film> getFilms(){
        return films;
    }

    @Override
    public Film addFilm(Film film) {
        films.add(film);
        return film;
    }
}
