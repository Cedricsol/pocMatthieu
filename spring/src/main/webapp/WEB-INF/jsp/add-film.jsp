<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add Film</title>
        <link href="<c:url value='/css/common.css'/>" rel="stylesheet">
        <link href="<c:url value='/css/forms.css' />" rel="stylesheet">
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
            <div class="form-background">
                <h2>Register a Film</h2>
                <c:if test="${addFilmSuccess}">
                    <div>Successfully added Film with name: ${savedFilm.name}</div>
                </c:if>
            
                <c:url var="add_Film_url" value="/film/addFilm"/>
                <form:form action="${add_film_url}" method="post" modelAttribute="film">
                    <form:label path="name">Film Name: </form:label> <form:input type="text" path="name"/>
                    <form:label path="director">Director: </form:label> <form:input type="text" path="director"/>
                    <form:label path="publishYear">Published in: </form:label> <form:input path="publishYear"/>
                    <input type="submit" value="submit"/>
                </form:form>
            </div>
        </div>
    </body>
</html>