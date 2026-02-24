<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <head>
    <title>Home</title>
    <link href="<c:url value='/css/common.css' />" rel="stylesheet" />
    <link href="<c:url value='/css/home.css' />" rel="stylesheet" />
  </head>
  <body>
    <nav class="menu">
      <a class="nav-item" href="/">
        <div class="svgBox">
          <img src="assets/home.svg" />
        </div>
        <span>Home</span>
      </a>
      <a class="nav-item" href="/book/addBook">
        <div class="svgBox">
          <img src="assets/add_book.svg" />
        </div>
        <span>Add Book</span>
      </a>
      <a class="nav-item" href="/book/viewBooks">
        <div class="svgBox">
          <img src="assets/view_books.svg" />
        </div>
        <span>View Books</span>
      </a>
      <a class="nav-item" href="/film/addFilm">
        <div class="svgBox">
          <img src="assets/add_film.svg" />
        </div>
        <span>Add Film</span>
      </a>
      <a class="nav-item" href="/film/viewFilms">
        <div class="svgBox">
          <img src="assets/view_films.svg" />
        </div>
        <span>View Films</span>
      </a>
    </nav>
    <div class="container">
      <h1>Made with spring boot JSP</h1>
      <h2>Welcome to home page</h2>
    </div>
  </body>
</html>
