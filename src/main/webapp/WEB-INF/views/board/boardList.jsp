<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="titles" uri="http://tiles.apache.org/tags-tiles" %>
<table class="table align-middle table-hover border-dark">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">제목</th>
        <th scope="col">글쓴이</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="board" items="${board}" begin="0">
        <tr>
            <th scope="row">${board.id}</th>
            <td><a href="/boardDetail?id=${board.id}">${board.title}</a></td>
            <td>${board.author}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<jsp:include page="../common/paging.jsp" />

<a class="btn btn-primary" href="<c:url value="boardWrite" />" role="button">Link</a>