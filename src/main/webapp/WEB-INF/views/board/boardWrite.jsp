<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<div class="row">
    <h1>글쓰기</h1>
    <form action="/doWrite" method="post">
        <div class="form-outline mb-4">
            <input type="text" id="title" class="form-control" name="title"/>
            <label class="form-label" for="title">Title</label>
        </div>
        <hr />
        <div>
            <input type="hidden" value="${currentUser.name}" name="author">
        </div>
        <div>
            <textarea id="summernote" name="content"></textarea>
        </div>
        <input id="saveBtn" type="button" value="글저장" class="btn btn-primary btn-block" onclick="saveBoard(this.form)"></input>
    </form>
</div>

<script>
    $(document).ready(function() {
        $('#summernote').summernote({
            minHeight: 500,             // 최소 높이
            maxHeight: 500,             // 최대 높이
            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
            placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
        });
    });
    function saveBoard(data) {
        let title = data.title.value;
        let content = data.content.value;

        if (title.trim() == '') {
            alert("제목을 입력하세요");
            return false;
        }
        if (content.trim() == '') {
            alert("내용을 입력해주세요");
            return false;
        }
        data.submit();
    }
</script>
