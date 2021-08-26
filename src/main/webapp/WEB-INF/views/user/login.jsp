<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
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
                    <form class="bg-white rounded-5 shadow-5-strong p-5" action="/doLogin" method="post">
                        <h4 class="text-center">로그인</h4>
                        <div class="form-outline mb-4">
                            <input type="email" id="email" class="form-control" name="email"/>
                            <label class="form-label" for="email">Email</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="password" id="password" class="form-control" name="password"/>
                            <label class="form-label" for="password">Password</label>
                        </div>

                        <div class="row mb-4">
                            <div class="col text-center">
                                <a href="/sign">Do you wanna Sign up?</a>
                            </div>
                        </div>
                        <button type="button" class="btn btn-primary btn-block" onclick="loginUser(this.form)">
                            Login!!!
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function loginUser(data) {
        let email = data.email.value;
        let password = data.password.value;
        if (email.trim() == '') {
            window.alert("이메일을 입력해주세요..");
            return false;
        }
        if (password.trim() == '') {
            window.alert("비밀번호를 입력해주세요...");
            return false;
        }
        data.submit();
    }
</script>
