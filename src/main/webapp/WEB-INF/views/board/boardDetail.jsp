<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<main class="mt-4 mb-5">
    <div class="container">
        <div class="row">
            <div class=" mb-4">
                <section class="border-bottom mb-4">
                    <div class="row align-items-center mb-4">
                        <div class="col-lg-6 text-center text-lg-start mb-3 m-lg-0">
                            <strong>제목 : ${detail.title}</strong>
                        </div>

                        <div class="col-lg-6 text-center text-lg-end">
                            <span>글쓴이 : ${detail.author}</span>
                        </div>
                    </div>
                </section>

                <section>
                    <p>${detail.content}</p>
                </section>

                <c:choose>
                    <c:when test="${!empty currentUser}">
                        <section class="text-center border-top border-bottom py-4 mb-4">
                            <button type="button" class="btn btn-primary me-1">
                                <a href="#reply">Add Reply!</a>
                            </button>
                            <c:if test="${currentUser.name eq detail.author}">
                                <a href="#reply">
                                    <button type="button" class="btn btn-danger me-1">
                                        Delete!
                                    </button>
                                </a>
                                <a href="#reply">
                                    <button type="button" class="btn btn-info me-1">
                                        Update!
                                    </button>
                                </a>
                            </c:if>
                        </section>
                    </c:when>
                    <c:when test="${empty currentUser}">
                        <section class="text-center border-top border-bottom py-4 mb-4">
                            <a href="/sign">
                                <button type="button" class="btn btn-primary me-1">
                                    Sign up!
                                </button>
                            </a>
                        </section>
                    </c:when>
                </c:choose>

                <!-- 댓글 부분 -->
                <section class="border-bottom mb-3">
                    <c:choose>
                        <c:when test="${!empty reply}">
                            <c:forEach var="reply" items="${reply}" begin="0">
                                <div class="row mb-4">
                                    <div class="col-1">
                                        <i class="fas fa-user-alt fa-3x"></i>
                                    </div>
                                    <div class="col-11">
                                        <p class="mb-2"><strong>${reply.author}</strong></p>
                                        <p>${reply.content}</p>

                                        <!-- 댓글답변 버튼 -->
                                        <c:if test="${!empty currentUser}">
                                            <button
                                                    type="button"
                                                    class="btn btn-primary btn-block"
                                                    data-mdb-toggle="modal"
                                                    data-mdb-target="#replyModal"
                                                    onclick="transferId(${reply.id})"
                                            >
                                                답글달기
                                            </button>
                                        </c:if>
                                    </div>
                                </div>

                                <!-- 댓글답변 출력 -->
                                <c:forEach var="rereply" items="${rereply}" begin="0">
                                    <c:if test="${rereply.reply_id eq reply.id}">
                                        <div class="row mb-4">
                                            <div class="col-11">
                                                <p class="mb-2"><strong>${rereply.author}</strong></p>
                                                <p>${rereply.content}</p>
                                            </div>
                                            <div class="col-1">
                                                <i class="fas fa-user-alt fa-3x"></i>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </c:forEach>
                        </c:when>

                        <c:when test="${empty reply}">
                            <p class="text-center"><strong>첫댓글을 작성해 주세요!</strong></p>
                        </c:when>
                    </c:choose>
                </section>

                <!-- 댓글 작성 -->
                <section id="reply">
                    <c:choose>
                        <c:when test="${!empty currentUser}">
                            <form action="/saveReply" method="post">
                                <input type="hidden" value="${detail.id}" name="board_id">
                                <input type="hidden" value="${currentUser.name}" name="author">
                                <div class="form-outline mb-4">
                                    <textarea class="form-control" rows="2" name="content"></textarea>
                                    <label class="form-label" for="reply">댓글을 입력해주세요</label>
                                </div>
                                <button type="button" class="btn btn-primary btn-block mb-4"
                                        onclick="saveReply(this.form)">
                                    Save Reply!
                                </button>
                            </form>
                        </c:when>
                        <c:when test="${empty currentUser}">
                            <p class="text-center"><strong>회원만 댓글 작성이 가능합니다 ㅜ..</strong></p>
                        </c:when>
                    </c:choose>
                </section>

                <!-- 대댓글작성 -->
                <div
                        class="modal fade"
                        id="replyModal"
                        tabindex="-1"
                        aria-labelledby="exampleModalLabel"
                        aria-hidden="true"
                >
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">댓글작성</h5>
                                <button
                                        type="button"
                                        class="btn-close"
                                        data-mdb-dismiss="modal"
                                        aria-label="Close"
                                ></button>
                            </div>
                            <form action="/saveReReply" method="post">
                                <div class="modal-body">
                                    <input type="hidden" value="${detail.id}" name="board_id">
                                    <input type="hidden" id="reply_id" value="" name="reply_id">
                                    <input type="hidden" name="author" value="${currentUser.name}">
                                    <div class="form-outline mb-4">
                                        <input type="text" id="content" name="content" class="form-control"
                                               placeholder="댓글을 작성해주세요"/>
                                        <label class="form-label" for="content"></label>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal"
                                            value="NO!">Cancel!!!
                                    </button>
                                    <button type="button" class="btn btn-primary"
                                            onclick="saveReReply(this.form)">
                                        Save!
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</main>

<script>
    function saveReply(data) {
        let author = data.author.value;
        let content = data.content.value;
        if (author.trim() == '') {
            window.alert("잘못된 접근입니다.");
            return false;
        }
        if (content.trim() == '') {
            window.alert("댓글을 입력해주세요!");
            return false;
        }
        data.submit();
    }

    //댓글의 답글 달아줄때 해당 댓글의 아이디값을 전달하기 위한 용도
    function transferId(data) {
        $('#reply_id').val(data);
    }

    function saveReReply(data) {
        let author = data.author.value;
        let content = data.content.value;
        if (author.trim() == '') {
            window.alert("잘못된 접근입니다.");
            return false;
        }
        if (content.trim() == '') {
            window.alert("댓글을 입력해주세요!");
            return false;
        }
        data.submit();
    }
</script>