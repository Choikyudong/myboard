<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%--<div class="row">--%>
<%--    <h1>로그인창</h1>--%>
<%--    <form action="/doLogin" method="post">--%>
<%--        <div class="form-outline mb-4">--%>
<%--            <input type="email" id="email" class="form-control" name="email"/>--%>
<%--            <label class="form-label" for="email">Email</label>--%>
<%--        </div>--%>
<%--        <div class="form-outline mb-4">--%>
<%--            <input type="password" id="password" class="form-control" name="password"/>--%>
<%--            <label class="form-label" for="password">Password</label>--%>
<%--        </div>--%>
<%--        <input type="submit" class="btn btn-primary btn-block mb-4" value="Login" />--%>
<%--    </form>--%>
<%--</div>--%>

<style>
    #intro {
        height: 90vh;
    }

    /* Height for devices larger than 576px */
    @media (min-width: 992px) {
        #intro {
            margin-top: -58.59px;
        }
    }
</style>

<!-- Background image -->
<div id="intro">
    <div class=" d-flex align-items-center h-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-5 col-md-8">
                    <form class="bg-white rounded-5 shadow-5-strong p-5" action="/doLogin" method="post">
                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <input type="email" id="email" class="form-control" name="email"/>
                            <label class="form-label" for="email">Email</label>
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-4">
                            <input type="password" id="password" class="form-control" name="password"/>
                            <label class="form-label" for="password">Password</label>
                        </div>

                        <!-- 2 column grid layout for inline styling -->
                        <div class="row mb-4">
                            <div class="col text-center">
                                <!-- Simple link -->
                                <a href="#!">Do you wanna Sign up?</a>
                            </div>
                        </div>

                        <!-- Submit button -->
                        <input type="submit" class="btn btn-primary btn-block" value="Login"></input>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
