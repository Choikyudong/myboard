<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container justify-content-between">
            <div class="d-flex">
                <a class="navbar-brand me-2 mb-1 d-flex align-items-center" href="/">
                    MyBoard
                </a>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="/boardList">게시판보기</a>
                    </li>

                </ul>
            </div>

            <ul class="navbar-nav flex-row">
                <c:choose>
                <c:when test="${currentUser eq null}">
                    <div class="d-flex align-items-center">
                        <button type="button" class="btn btn-link px-3 me-2">
                            <a href="/login">로그인</a>
                        </button>
                        <button type="button" class="btn btn-link px-3 me-2">
                            <a href="/sign">회원가입</a>
                        </button>
                    </div>
                </c:when>

                <c:when test="${currentUser ne null}">
                <li class="nav-item me-3 me-lg-1">
                    <strong class="d-none d-sm-block ms-1">${currentUser.name}님 환영해요~</strong>
                </li>

                <li class="nav-item dropdown me-3 me-lg-1">
                    <a
                            class="nav-link dropdown-toggle hidden-arrow"
                            href="#"
                            id="navbarDropdownMenuLink"
                            role="button"
                            data-mdb-toggle="dropdown"
                            aria-expanded="false"
                    >
                        <i class="fas fa-user-alt"></i>
                    </a>
                    <ul
                            class="dropdown-menu dropdown-menu-end"
                            aria-labelledby="navbarDropdownMenuLink"
                    >
                        <li>
                            <a class="dropdown-item" href="/profile">내 프로필 보기</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="/doLogout">로그아웃</a>
                        </li>
                    </ul>
                </li>
            </ul>
            </c:when>
            </c:choose>
            <!-- Right elements -->
        </div>
    </nav>
    <!-- Navbar -->
</header>