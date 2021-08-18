<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">
    <h1>회원가입창</h1>
    <%--    <form action="/doSign" method="post">--%>
    <%--        <div>--%>
    <%--            <input type="email" placeholder="email" name="email">--%>
    <%--        </div>--%>
    <%--        <div>--%>
    <%--            <input type="password" placeholder="password" name="password">--%>
    <%--        </div>--%>
    <%--        <div>--%>
    <%--            <input type="text" placeholder="name" name="name">--%>
    <%--        </div>--%>
    <%--        <input type="submit">Sign</input>--%>
    <%--    </form>--%>

    <form action="/doSign" method="post">
        <div class="form-outline mb-4">
            <input type="email" id="Email" class="form-control" name="email"/>
            <label class="form-label" for="Email">Email</label>
        </div>
        <div class="form-outline mb-4">
            <input type="password" id="Password" class="form-control" name="password"/>
            <label class="form-label" for="Password">Password</label>
        </div>
        <div class="form-outline mb-4">
            <input type="text" id="name" class="form-control" name="name"/>
            <label class="form-label" for="name">name</label>
        </div>

        <!-- Submit button -->
        <input type="submit" class="btn btn-primary btn-block mb-4" value="Sign Up"></input>
    </form>
</div>