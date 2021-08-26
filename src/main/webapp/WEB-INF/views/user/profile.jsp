<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <h4 class="text-center">${currentUser.name}님의 프로필입니다</h4>
                        <div class="form-outline mb-4">
                            <input type="email" class="form-control" readonly="true" value="${currentUser.email}"/>
                        </div>
                        <div class="form-outline mb-4">
                            <input type="text" class="form-control" readonly="true" value="${currentUser.name}"/>
                        </div>
                        <button
                                type="button"
                                class="btn btn-primary btn-block"
                                data-mdb-toggle="modal"
                                data-mdb-target="#exampleModal"
                        >
                            정보수정하기
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
                                        <h5 class="modal-title" id="exampleModalLabel">회원가입 : 이메일은 변경불가능</h5>
                                        <button
                                                type="button"
                                                class="btn-close"
                                                data-mdb-dismiss="modal"
                                                aria-label="Close"
                                        ></button>
                                    </div>
                                    <form action="/doUpdate" method="post">
                                        <div class="modal-body">
                                            <input type="text" name="id" value="${currentUser.id}" />
                                            <div class="form-outline mb-4">
                                                <input type="password" id="password" name="password"
                                                       class="form-control"/>
                                                <label class="form-label" for="password">Password</label>
                                            </div>
                                            <div class="form-outline mb-4">
                                                <input type="text" id="name" name="name" class="form-control"/>
                                                <label class="form-label" for="name">Name</label>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal"
                                                    value="NO!">No!!!
                                            </button>
                                            <button type="button" class="btn btn-primary"
                                                    onclick="updateUser(this.form)">
                                                Update!
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function updateUser(data) {
        let password = data.password.value;
        let name = data.name.value;

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