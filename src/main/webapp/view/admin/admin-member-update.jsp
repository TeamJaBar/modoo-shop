<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>계정 변경</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="../../css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

</head>

<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="admin-home.html">관리자 페이지</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                class="fas fa-bars"></i></button>
       
        <!-- Navbar-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="main.html">로그아웃</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">홈</div>
                        <a class="nav-link" href="admin-home.html">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            홈 화면
                        </a>
                        <div class="sb-sidenav-menu-heading">사이트 관리</div>
                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                            data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            사용자 관리
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                            data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="admin-member.html">사용자 목록</a>
                            </nav>
                        </div>
                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages"
                            aria-expanded="false" aria-controls="collapsePages">
                            <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                            상품 관리
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapsePages" aria-labelledby="headingTwo"
                            data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                <a class="nav-link" href="admin-product-insert.html">상품 등록</a>
                            </nav>
                        </div>
                        <div class="collapse" id="collapsePages" aria-labelledby="headingTwo"
                            data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                <a class="nav-link" href="admin-product.html">상품 목록</a>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Product by:</div>
                    3조 Team jaBar
                </div>
            </nav>
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">계정 변경</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item">계정 변경</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            사용자 계정 변경
                        </div>
                        <div class="card-body">
                            <div class="card-body">
                                <form>
                                    아이디
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="id" type="text"
                                            placeholder="Enter your id" value="hong2311" required="required" />
                                        <label for="inputName">hong2311</label>
                                    </div>
                                    비밀번호
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="pw" type="password"
                                            placeholder="Enter your password" value="abcd1234!!" required="required" />
                                        <label for="inputName">abcd1234!!</label>
                                    </div>
                                    이름
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="Name" type="text"
                                            placeholder="Enter your name" value="홍길동" required="required" />
                                        <label for="inputName">홍길동</label>
                                    </div>
                                    이메일
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="Email" type="email"
                                            placeholder="name@example.com" value="asd@naver.com" required="required" />
                                        <label for="inputEmail">asd@naver.com</label>
                                    </div>
                                    휴대폰번호
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="Phone" type="text"
                                            placeholder="Enter your phone" value="01012341234" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');" required="required" />
                                        <label for="inputPhone">010-1234-1234</label>
                                    </div>
                                    전화번호
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="Tel" type="text"
                                            placeholder="Enter your tel" value="021231234" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');"/>
                                        <label for="inputTel">02-123-1234</label>
                                    </div>
                                    주소
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="Add" type="text"
                                            placeholder="Enter your add" value="서울 강남구 테헤란로 146, 3층" required="required" />
                                        <label for="inputAdd">서울 강남구 테헤란로 146, 3층</label>
                                    </div>
                                    포인트
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="Point" type="text"
                                            placeholder="Enter your point" value="500" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');" required="required" />
                                        <label for="inputPoint">500</label>
                                    </div>
                                    <div class="mt-4 mb-0">
                                        <div class="d-grid"><a class="btn btn-primary btn-block"  href="admin-member.html"
                                                onclick="return ch();">변경 완료</a></div>
                                    </div>
                                    <div class="mt-4 mb-0">
                                        <div class="d-grid"><a class="btn btn-danger btn-block" href="admin-member.html"
                                                onclick="return con();" >변경 취소</a></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; https://github.com/임시/임시 all rights reserved.</div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="../../js/scripts.js"></script>
    <script src="../../js/datatables-simple-demo.js"></script>
</body>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
    function ch(){
        let id = $("#id").val();
        let pw = $("#pw").val();
        let name = $("#Name").val();
        let email = $("#Email").val();
        let phone = $("#Phone").val();
        let add = $("#Add").val();
        let point = $("#Point").val();

        let number = pw.search(/[0-9]/g);
        let english = pw.search(/[a-z]/ig);
        let spece = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
        let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

        if(id!=""){
        if (pw.length < 8 || pw.length > 20) {
            alert("8자리 ~ 20자리 이내로 입력해주세요.");
            return false;

        } else if (pw.search(/\s/) != -1) {
            alert("비밀번호는 공백 없이 입력해주세요.");
            return false;

        } else if (number < 0 || english < 0 || spece < 0) {
            alert("영문,숫자,특수문자를 혼합하여 입력해주세요.");
            return false;

        } else if ((number < 0 && english < 0) || (english < 0 && spece < 0) || (spece < 0 && number < 0)) {
            alert("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
            return false;

        } else if (/(\w)\1\1\1/.test(pw)) {
            alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
            return false;

        } else if (pw.search(id) > -1) {
            alert("비밀번호에 아이디가 포함되었습니다.");
            return false;
        } else {
            if(name==""||email==""||phone==""||add==""||point==""){
                alert("빈 칸 없이 모두입력해주세요.");
                return false
            } else{
                alert("변경이 완료되었습니다!");
                return true;    
            }
            
        }

        if (false === reg.test(pw)) {
            alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
            return false;
        } else {
            if(name==""||email==""||phone==""||add==""||point==""){
                alert("빈 칸 없이 모두입력해주세요.");
                return false
            } else{
                alert("변경이 완료되었습니다!");
                return true;    
            }
        }
    } else {
        alert("빈 칸 없이 모두입력해주세요.");
        return false
    }
}

    function con(){
        var result = confirm("정말 취소하시겠습니까?");

        if(result){
            alert("취소합니다!")
            return true;
        } else {
            return false;
        }
    }
</script>

</html>