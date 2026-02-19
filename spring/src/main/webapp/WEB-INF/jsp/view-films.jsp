<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>View Films</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
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
    </body>
</html>