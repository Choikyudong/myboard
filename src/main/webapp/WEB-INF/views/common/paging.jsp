<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:if test="${board ne null && paging.totalPage > 0}">
    <c:set var="now" value="${paging.paging.nowPageNum}"/>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <c:if test="${paging.paging.nowPageNum ne 1}">
                <li class="page-item">
                    <a class="page-link" href="?nowPageNum=${now - 1}"> < </a>
                </li>
            </c:if>
            <c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
                <li class="page-item"><a class="page-link" href="?nowPageNum=${i}">${i}</a></li>
            </c:forEach>
            <c:if test="${paging.paging.nowPageNum ne paging.totalPage}">
                <li class="page-item">
                    <a class="page-link" href="?nowPageNum=${now + 1}"> > </a>
                </li>
            </c:if>
        </ul>
    </nav>
</c:if>
