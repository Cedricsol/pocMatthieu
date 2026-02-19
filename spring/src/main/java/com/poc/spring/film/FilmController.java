package com.poc.spring.film;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;




@Controller
@RequestMapping("/film")
public class FilmController {
    private final FilmService filmService;

    public FilmController(FilmService filmService){
        this.filmService = filmService;
    }

    @GetMapping("/viewFilms")
    public String viewFilms(Model model) {
        model.addAttribute("films", filmService.getFilms());
        return "view-films";
    }

    @GetMapping("/addFilm")
    public String addFilmView(Model model) {
        model.addAttribute("film", new Film());
        return "add-film";
    }
    
    @PostMapping("/addFilm")
    public RedirectView addFilm(@ModelAttribute("film") Film film, RedirectAttributes redirectAttributes) {
        final RedirectView redirectView = new RedirectView("film/addFilm");
        Film savedFilm = filmService.addFilm(film);
        redirectAttributes.addFlashAttribute("savedFilm", savedFilm);
        redirectAttributes.addFlashAttribute("addFilmSuccess", true);
        return redirectView;
    }
    
}
