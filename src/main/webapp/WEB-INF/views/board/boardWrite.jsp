<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<div class="row">
    <h1>글쓰기</h1>
    <form action="/doWrite" method="post">
        <div>
            <input type="text" placeholder="title" name="title">
        </div>
        <div>
            <input type="text" placeholder="content" name="content">
        </div>
        <div>
            <input type="text" placeholder="name" value="${currentUser.name}" name="author" readonly>
        </div>
        <input type="submit">글쓰기</input>
    </form>
</div>