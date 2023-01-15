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
    <title>사용자 목록</title>
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
                    <h1 class="mt-4">사용자 관리</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item">사용자 관리</li>
                        <li class="breadcrumb-item active">사용자 목록</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-body">
                            사용자 목록 페이지입니다.
                        </div>
                    </div>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            사용자 목록
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                        <th>아이디</th>
                                        <th>이름</th>
                                        <th>이메일</th>
                                        <th>휴대폰번호</th>
                                        <th>회원등급</th>
                                        <th>가입일</th>
                                        <th>적립금</th>
                                        <th>누적 구매금액</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>아이디</th>
                                        <th>이름</th>
                                        <th>이메일</th>
                                        <th>휴대폰번호</th>
                                        <th>회원등급</th>
                                        <th>가입일</th>
                                        <th>적립금</th>
                                        <th>누적 구매금액</th>
                                        <th>Action</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <tr>
                                        <td>admin</td>
                                        <td>관리자</td>
                                        <td>asd@naver.com</td>
                                        <td>01012341234</td>
                                        <td>관리자</td>
                                        <td>2000/10/25</td>
                                        <td>0</td>
                                        <td>0회 0원</td>
                                        <td><a class="btn btn-primary" href="admin-member-update.html">변경</a>
                                            <a class="btn btn-danger" href="#" onClick="del()">삭제</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>lim1231</td>
                                        <td>임꺽정</td>
                                        <td>asd@naver.com</td>
                                        <td>01012341234</td>
                                        <td>일반회원</td>
                                        <td>2011/11/05</td>
                                        <td>10,500</td>
                                        <td>1회 6,550원</td>
                                        <td><a class="btn btn-primary" href="admin-member-update.html">변경</a>
                                            <a class="btn btn-danger" href="#" onClick="del()">삭제</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>hong2311</td>
                                        <td>홍길동</td>
                                        <td>asd@naver.com</td>
                                        <td>01012341234</td>
                                        <td>일반회원</td>
                                        <td>2022/04/10</td>
                                        <td>0</td>
                                        <td>11회 688,550원</td>
                                        <td><a class="btn btn-primary" href="admin-member-update.html">변경</a>
                                            <a class="btn btn-danger" href="#" onClick="del()">삭제</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>mumu1</td>
                                        <td>아무무</td>
                                        <td>asd@naver.com</td>
                                        <td>01012341234</td>
                                        <td>일반회원</td>
                                        <td>2021/04/25</td>
                                        <td>500</td>
                                        <td>11회 10,150원</td>
                                        <td><a class="btn btn-primary" href="admin-member-update.html">변경</a>
                                            <a class="btn btn-danger" href="#" onClick="del()">삭제</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>ari111</td>
                                        <td>아리</td>
                                        <td>asd@naver.com</td>
                                        <td>01012341234</td>
                                        <td>일반회원</td>
                                        <td>2014/06/12</td>
                                        <td>100</td>
                                        <td>11회 100,060원</td>
                                        <td><a class="btn btn-primary" href="admin-member-update.html">변경</a>
                                            <a class="btn btn-danger" href="#" onClick="del()">삭제</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
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

</html>