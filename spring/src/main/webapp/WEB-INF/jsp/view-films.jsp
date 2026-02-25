<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>View Films</title>
        <link href="<c:url value='/css/common.css' />" rel="stylesheet">
        <link href="<c:url value='/css/tables.css' />" rel="stylesheet">
    </head>
    <nav class="menu">
      <a class="nav-item" href="/">
        <div class="svgBox">
          <img src="../assets/home.svg" />
        </div>
        <span>Home</span>
      </a>
      <a class="nav-item" href="/book/addBook">
        <div class="svgBox">
          <img src="../assets/add_book.svg" />
        </div>
        <span>Add Book</span>
      </a>
      <a class="nav-item" href="/book/viewBooks">
        <div class="svgBox">
          <img src="../assets/view_books.svg" />
        </div>
        <span>View Books</span>
      </a>
      <a class="nav-item" href="/film/addFilm">
        <div class="svgBox">
          <img src="../assets/add_film.svg" />
        </div>
        <span>Add Film</span>
      </a>
      <a class="nav-item" href="/film/viewFilms">
        <div class="svgBox">
          <img src="../assets/view_films.svg" />
        </div>
        <span>View Films</span>
      </a>
    </nav>
    <body>
        <div class="container">
            <h1>Made with spring boot JSP</h1>
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Director</th>
                        <th>Published in</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${films}" var="film">
                        <tr>
                            <td>${film.name}</td>
                            <td>${film.director}</td>
                            <td>${film.publishYear}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>