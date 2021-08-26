<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<div>
    <div class="row">
        <div class="nav flex-column nav-pills text-center md-5">
            <h3>버튼을 눌러서 해당 게시판의 설명을 볼 수 있습니다.</h3>
        </div>
        <hr />
        <div class="col-3">
            <div
                    class="nav flex-column nav-pills text-center"
                    id="v-pills-tab"
                    role="tablist"
                    aria-orientation="vertical"
            >
                <a
                        class="nav-link active"
                        id="v-pills-home-tab"
                        data-mdb-toggle="pill"
                        href="#v-pills-home"
                        role="tab"
                        aria-controls="v-pills-home"
                        aria-selected="true"
                >체험용 아이디</a
                >
                <a
                        class="nav-link"
                        id="v-pills-profile-tab"
                        data-mdb-toggle="pill"
                        href="#v-pills-profile"
                        role="tab"
                        aria-controls="v-pills-profile"
                        aria-selected="false"
                >사용된 기술들</a
                >
                <a
                        class="nav-link"
                        id="v-pills-messages-tab"
                        data-mdb-toggle="pill"
                        href="#v-pills-messages"
                        role="tab"
                        aria-controls="v-pills-messages"
                        aria-selected="false"
                >페이지 제작 이유</a
                >
            </div>
        </div>

        <div class="col-9">
            <div class="tab-content" id="v-pills-tabContent">
                <div
                        class="tab-pane fade show active"
                        id="v-pills-home"
                        role="tabpanel"
                        aria-labelledby="v-pills-home-tab"
                >
                    체험용 아이디
                    Id : test@test.com
                    password : 1234
                </div>
                <div
                        class="tab-pane fade"
                        id="v-pills-profile"
                        role="tabpanel"
                        aria-labelledby="v-pills-profile-tab"
                >
                    <h3>해당 웹사이트를 제작하는데 사용한 기술들</h3>
                    <ul>
                        <li>페이지 템플릿 : Jsp & tiles</li>
                        <li>RDBMS : MySql</li>
                        <li>백엔드 : SpringBoot</li>
                        <li>글작성에디터 : summernote</li>
                        <li>SqlMapper : Mybatis</li>
                        <li>CSS : MDB & BootStrap</li>
                        <li>서버 : AWS(ec-2)</li>
                        <li>서버엔진 : nginx</li>
                        <li>배포 & 빌드 : 젠킨스</li>
                    </ul>
                </div>
                <div
                        class="tab-pane fade"
                        id="v-pills-messages"
                        role="tabpanel"
                        aria-labelledby="v-pills-messages-tab"
                >
                    <h4>페이지 제작 이유</h4>
                    <p>사용한 기술들을 보면 SPA나 Ajax 그리고 Jpa같은 기술들이 없고<br/>
                        백엔드 기술들도 스프링시큐리티는 사용하지 않고 SpringMVC만 사용하였습니다.<br/>
                        가장 원시적인 웹사이트를 도움없이 혼자서 제작을 해보는게 목표였기에 많은 기술들을 빼고 제작하였습니다.</p>
                    <br/>
                    <h5>추가될 기능들</h5>
                    <strong>아래에 해당하는 기술들은 사이트가 목표로 하는 기술들이며 완료되면 제거 또는 추가될 예정입니다.</strong>
                    <ul>
                        <li>간단한 게시글 검색기능</li>
                        <li>카카오 로그인</li>
                        <li>AOP</li>
                        <li>Interceptor</li>
                        <li>댓글 페이징</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
