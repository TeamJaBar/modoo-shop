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
    <title>상품 목록</title>
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
                    <h1 class="mt-4">상품 목록</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item">상품 관리</li>
                        <li class="breadcrumb-item active">상품 목록</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-body">
                            상품 목록 페이지입니다.
                        </div>
                    </div>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            상품 목록
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                        <th><input type="checkbox"></th>
                                        <th>No</th>
                                        <th>브랜드</th>
                                        <th>상품구분</th>
                                        <th>상품코드</th>
                                        <th>상품명</th>
                                        <th>판매가</th>
                                        <th>할인가</th>
                                        <th>action</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th><input type="checkbox"></th>
                                        <th>No</th>
                                        <th>브랜드</th>
                                        <th>상품구분</th>
                                        <th>상품코드</th>
                                        <th>상품명</th>
                                        <th>판매가</th>
                                        <th>할인가</th>
                                        <th>action</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>1</td>
                                        <td>코리아보드게임즈</td>
                                        <td>전략</td>
                                        <td>P0000001</td>
                                        <td><img class="adminImg" src="/images/p001.jpg">루미큐브</td>
                                        <td>5,000</td>
                                        <td>5,000</td>
                                        <td><a class="btn btn-primary" href="admin-product-update.html">상품 변경</a>
                                            <a class="btn btn-danger" href="#" onClick="del()">상품 삭제</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>2</td>
                                        <td>보드게임몰</td>
                                        <td>파티게임</td>
                                        <td>P0000002</td>
                                        <td><img class="adminImg" src="/images/p002.jpg">악어새</td>
                                        <td>10,000</td>
                                        <td>10,000</td>
                                        <td><a class="btn btn-primary" href="admin-product-update.html">상품 변경</a>
                                            <a class="btn btn-danger" href="#" onClick="del()">상품 삭제</a>
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