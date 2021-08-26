<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <style>
        #intro {
            height: 90vh;
        }

        @media (min-width: 992px) {
            #intro {
                margin-top: -58.59px;
            }
        }
    </style>

    <div id="intro">
        <div class=" d-flex align-items-center h-100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-5 col-md-8">
                        <form class="bg-white rounded-5 shadow-5-strong p-5" action="/doSign" method="post">
                            <h4 class="text-center">회원가입창</h4>
                            <div class="form-outline mb-4">
                                <input type="email" id="email" class="form-control" name="email"/>
                                <label class="form-label" for="email">Email</label>
                            </div>

                            <div class="form-outline mb-4">
                                <input type="password" id="password" class="form-control" name="password"/>
                                <label class="form-label" for="password">Password</label>
                            </div>

                            <div class="form-outline mb-4">
                                <input type="text" id="name" class="form-control" name="name"/>
                                <label class="form-label" for="name">Name</label>
                            </div>

                            <div class="row mb-4">
                                <div class="col text-center">
                                    <a href="/login">Do you already have an ID?</a>
                                </div>
                            </div>
                            <button
                                    type="button"
                                    class="btn btn-primary btn-block"
                                    data-mdb-toggle="modal"
                                    data-mdb-target="#exampleModal"
                            >
                                Sign
                            </button>

                            <div
                                    class="modal fade"
                                    id="exampleModal"
                                    tabindex="-1"
                                    aria-labelledby="exampleModalLabel"
                                    aria-hidden="true"
                            >
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">회원가입</h5>
                                            <button
                                                    type="button"
                                                    class="btn-close"
                                                    data-mdb-dismiss="modal"
                                                    aria-label="Close"
                                            ></button>
                                        </div>
                                        <div class="modal-body">입력된 정보로 회원가입을 하시겠습니까?</div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal"
                                                    value="NO!">No!!!
                                            </button>
                                            <button type="button" class="btn btn-primary" onclick="saveUser(this.form)">
                                                SignUp!
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function saveUser(data) {
        let email = data.email.value;
        let password = data.password.value;
        let name = data.name.value;

        if (email.trim() == '') {
            window.alert("이메일을 입력해주세요..");
            return false;
        }
        if (password.trim() == '') {
            window.alert("비밀번호를 입력해주세요...");
            return false;
        }
        if (name.trim() == '') {
            window.alert("이름을 입력해주세요....");
            return false;
        }
        data.submit();
    }
</script>