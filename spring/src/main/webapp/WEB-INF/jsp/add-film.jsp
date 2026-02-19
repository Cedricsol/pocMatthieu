<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add Film</title>
    </head>
    <nav class="navbar navbar-expand navbar-light bg-light px-3">
        <a class="navbar-brand" href="/">Home</a>
        <a class="navbar-brand" href="/book/addBook">add book</a>
        <a class="navbar-brand" href="/book/viewBooks">view books</a>
        <a class="navbar-brand" href="/film/addFilm">add film</a>
        <a class="navbar-brand" href="/film/viewFilms">view films</a>
    </nav>
    <h1>Made with spring boot JSP</h1>
    <body>
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
    </body>
</html>