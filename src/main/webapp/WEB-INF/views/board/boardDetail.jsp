<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<%--<div class="w-auto p-3" style="background-color: #eee">--%>
<%--    <ul class="list-group">--%>
<%--        <li class="list-group-item">${detail.title}</li>--%>
<%--        <li class="list-group-item">${detail.content}</li>--%>
<%--        <li class="list-group-item">${detail.author}</li>--%>
<%--    </ul>--%>
<%--</div>--%>
<%--<hr/>--%>

<%--<h4>댓글목록</h4>--%>
<%--<div class="w-auto p-3" style="background-color: #eee">--%>
<%--    <c:if test="${!empty currentUser}">--%>
<%--        <h5>댓글작성</h5>--%>
<%--        &lt;%&ndash;    <form action="/saveReply" method="post">&ndash;%&gt;--%>
<%--        &lt;%&ndash;        <input type="hidden" value="${detail.id}" name="board_id">&ndash;%&gt;--%>
<%--        &lt;%&ndash;        <div>&ndash;%&gt;--%>
<%--        &lt;%&ndash;            <input type="text" placeholder="content" name="content">&ndash;%&gt;--%>
<%--        &lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--        &lt;%&ndash;        <div>&ndash;%&gt;--%>
<%--        &lt;%&ndash;            <input type="text" placeholder="author" name="author" value="${currentUser.name}">&ndash;%&gt;--%>
<%--        &lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--        &lt;%&ndash;        <input type="submit" value="댓글"></input>&ndash;%&gt;--%>
<%--        &lt;%&ndash;    </form>&ndash;%&gt;--%>

<%--        <form action="/saveReply" method="post">--%>
<%--            <input type="hidden" value="${detail.id}" name="board_id">--%>
<%--            <input type="hidden" value="${currentUser.name}" name="author">--%>
<%--            <div class="input-group mb-3">--%>
<%--                <input type="text" class="form-control" placeholder="댓글을 입력하세요" aria-describedby="button-addon2"--%>
<%--                       name="content"/>--%>
<%--                <button class="btn btn-outline-primary" type="submit" id="button-addon2" data-mdb-ripple-color="dark">--%>
<%--                    댓글등록--%>
<%--                </button>--%>
<%--            </div>--%>
<%--        </form>--%>
<%--        <div class="input-group mb-3">--%>
<%--        </div>--%>
<%--    </c:if>--%>
<%--    <hr/>--%>
<%--    <c:choose>--%>
<%--        <c:when test="${!empty reply}">--%>
<%--            <c:forEach var="reply" items="${reply}" begin="0">--%>
<%--                <ul class="list-group">--%>
<%--                    <li class="list-group-item">${reply.author}의 댓글 : ${reply.content}</li>--%>
<%--                </ul>--%>
<%--                <c:if test="${!empty currentUser}">--%>
<%--                    <h3>대댓글작성</h3>--%>
<%--                    <form action="/saveReReply" method="post">--%>
<%--                        <input type="hidden" value="${detail.id}" name="board_id">--%>
<%--                        <input type="text" value="${reply.id}" name="reply_id">--%>
<%--                        <div>--%>
<%--                            <input type="text" placeholder="content" name="content">--%>
<%--                        </div>--%>
<%--                        <div>--%>
<%--                            <input type="text" placeholder="author" name="author" value="${currentUser.name}">--%>
<%--                        </div>--%>
<%--                        <input type="submit" value="대댓글"></input>--%>
<%--                    </form>--%>
<%--                </c:if>--%>

<%--                <c:forEach var="rereply" items="${rereply}" begin="0">--%>
<%--                    <c:if test="${rereply.reply_id eq reply.id}">--%>
<%--                        <ul class="list-group">--%>
<%--                            <li class="list-group-item">${rereply.author}의 대댓글 : ${rereply.content}</li>--%>
<%--                        </ul>--%>
<%--                    </c:if>--%>
<%--                </c:forEach>--%>
<%--            </c:forEach>--%>
<%--        </c:when>--%>
<%--        <c:when test="${empty reply}">--%>
<%--            <li class="list-group-item">댓글이 아직 없네요!</li>--%>
<%--        </c:when>--%>
<%--    </c:choose>--%>
<%--</div>--%>

<main class="mt-4 mb-5">
    <div class="container">
        <!--Grid row-->
        <div class="row">
            <!--Grid column-->
            <div class=" mb-4">
                <!--Section: Post data-mdb-->
                <section class="border-bottom mb-4">
                    <div class="row align-items-center mb-4">
                        <div class="col-lg-6 text-center text-lg-start mb-3 m-lg-0">
                            <strong>${detail.title}</strong>
                        </div>

                        <div class="col-lg-6 text-center text-lg-end">
                            <span>글쓴이 : ${detail.author}</span>
                        </div>
                    </div>
                </section>
                <!--Section: Post data-mdb-->

                <!--Section: Text-->
                <section>
                    <p>${detail.content}</p>
                </section>
                <!--Section: Text-->

                <!--Section: Share buttons-->
                <section class="text-center border-top border-bottom py-4 mb-4">
                    <button type="button" class="btn btn-primary me-1">
                        <i class="fas fa-comments me-2"></i>Add reply
                    </button>
                </section>
                <!--Section: Share buttons-->

                <!--Section: Comments-->
                <section class="border-bottom mb-3">
                    <p class="text-center"><strong>Comments: 3</strong></p>
                    <c:choose>
                        <c:when test="${!empty reply}">
                            <c:forEach var="reply" items="${reply}" begin="0">
                                <!-- Comment -->
                                <div class="row mb-4">
                                    <div class="col-2">
                                        <i class="fas fa-user-alt fa-4x"></i>
                                    </div>

                                    <div class="col-10">
                                        <p class="mb-2"><strong>${reply.author}</strong></p>
                                        <p>${reply.content}</p>
                                    </div>
                                </div>
                            </c:forEach>
                            <%--                            <c:forEach var="rereply" items="${rereply}" begin="0">--%>
                            <%--                                <c:if test="${rereply.reply_id eq reply.id}">--%>
                            <%--                                    <p class="mb-2"><strong>${rereply.author}</strong></p>--%>
                            <%--                                    ${rereply.content}--%>
                            <%--                                </c:if>--%>
                            <%--                            </c:forEach>--%>
                        </c:when>
                        <c:when test="${empty reply}">
                            <div class="row mb-4">
                                <div class="col-10">
                                    <p class="text-center">
                                        댓글이 아직 없네요... ㅜ
                                    </p>
                                </div>
                            </div>
                        </c:when>
                    </c:choose>
                </section>
                <!--Section: Comments-->

                <!--Section: Reply-->
                <section>
                    <c:choose>
                        <c:when test="${!empty currentUser}">
                            <form action="/saveReply" method="post">
                                <!-- Message input -->
                                <input type="hidden" value="${detail.id}" name="board_id">
                                <input type="hidden" value="${currentUser.name}" name="author">
                                <div class="form-outline mb-4">
                                    <textarea class="form-control" id="reply" rows="2" name="content"></textarea>
                                    <label class="form-label" for="reply">reply</label>
                                </div>

                                <!-- Submit button -->
                                <button type="submit" class="btn btn-primary btn-block mb-4">
                                    Publish
                                </button>
                            </form>
                        </c:when>
                        <c:when test="${empty currentUser}">
                            <p class="text-center"><strong>댓글을 작성할려면 로그인이 필요합니다..</strong></p>
                        </c:when>
                    </c:choose>
                </section>
                <!--Section: Reply-->
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->
    </div>
</main>
<!--Main layout-->