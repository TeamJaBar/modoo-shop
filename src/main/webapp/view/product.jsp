<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="modoo" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.empty {
	height: 300px;
	text-align: center;
	line-height: 300px !important;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script>
// init Isotope
$(window).on('load', function() {
	var mcNum = '${param.mcNum}'
	var category = '${param.cateNum}'
	var $topeContainer = $('.isotope-grid');
	
	if(mcNum != null) {		
		$topeContainer.isotope({ filter: '.'+mcNum });
		$('#btn-0').removeClass('how-active1');
		$('#btn-'+mcNum).addClass('how-active1');
	}
	
});

</script>
<title>상품목록</title>
<%@include file="common/header.jsp"%>
<!-- Product -->
<div class="bg0 m-t-23 p-b-140" id="md-product">
	<c:if test="${fn:length(prodList) == 0}">
		<div class="empty mtext-111">상품 준비중입니다.</div>
	</c:if>
	<c:if test="${fn:length(prodList) != 0}">
		<div id="product-list" class="container">
			<div class="flex-w flex-sb-m p-b-52">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button id="btn-0" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">전체 상품</button>
					<c:if test="${param.cateNum == 101}">
						<c:forEach var="category" items="${cList}" varStatus="status">
							<button id="btn-${status.count}" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".${status.count}">${category.cateM}</button>
						</c:forEach>
					</c:if>
					<c:if test="${param.cateNum != 101}">
						<c:forEach var="category" items="${cList}">
							<c:if test="${category.cateM != NULL}">
								<button id="btn-${category.cateNum}" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".${category.cateNum}">${category.cateM}</button>
							</c:if>
						</c:forEach>
					</c:if>
				</div>
				<div class="flex-w flex-c-m m-tb-10">
					`
					<div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
						<i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
						<i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Filter
					</div>
					<div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
						<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
						<i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Search
					</div>
				</div>
				<!-- Search product -->
				<div class="dis-none panel-search w-full p-t-10 p-b-15">
					<div class="bor8 dis-flex p-l-15">
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>
						<input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product" placeholder="Search">
					</div>
				</div>
				<!-- Filter -->
				<div class="dis-none panel-filter w-full p-t-10">
					<div class="wrap-filter bg10 w-full p-lr-40 p-t-27 p-lr-15-sm">
						<div id="sortbyFilter" class="filter-col1 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">Sort By</div>
							<a href="#" onclick="search()" class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8" id="sortBy" data-value="1"> 추천순 </a>
							<a href="#" onclick="search()" class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8" id="sortBy" data-value="2"> 판매인기순 </a>
							<a href="#" onclick="search()" class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8" id="sortBy" data-value="3"> 낮은가격순 </a>
							<a href="#" onclick="search()" class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8" id="sortBy" data-value="4"> 높은가격순 </a>
						</div>
						<div id="priceFilter" class="filter-col2 p-r-15 p-b-27 m-t-10">
							<div class="mtext-102 cl2 p-b-15">Price</div>
							<a href="#" onclick="search()" class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8" id="price" data-value="1"> All </a>
							<a href="#" onclick="search()" class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8" id="price" data-value="2"> 0 ~ 10,000 &#8361; </a>
							<a href="#" onclick="search()" class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8" id="price" data-value="3"> 10,000 ~ 20,000 &#8361; </a>
							<a href="#" onclick="search()" class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8" id="price" data-value="4"> 20,000 ~ 30,000 &#8361; </a>
							<a href="#" onclick="search()" class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8" id="price" data-value="5"> 30,000 ~ 40,000 &#8361; </a>
							<a href="#" onclick="search()" class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8" id="price" data-value="6"> 40,000 &#8361; ~ </a>
						</div>
						<div class="filter-col4 p-b-27 m-t-10">
							<div class="mtext-102 cl2 p-b-15">Tags</div>
							<div id="tagsFilter" class="flex-w p-t-4 m-r--5">
								<a href="#" onclick="search()" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5" id="tags" data-value="1"> 1인용 </a>
								<a href="#" onclick="search()" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5" id="tags" data-value="2"> 2인용 </a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row isotope-grid">
				<div class="gutter-sizer"></div>
				<c:forEach var="product" items="${prodList}">
					<c:if test="${param.cateNum == 101}">
						<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${product.cateAge}">
					</c:if>
					<c:if test="${param.cateNum != 101}">
						<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${product.cateNum}">
					</c:if>
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="${product.pImg}" width="180" alt="${product.pName}">
							<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn3 p-lr-15 trans-04 js-show-quickview "> Quick View </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="productDetail.do?pNum=${product.pNum}" id="${product.pNum}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">${product.pName}</a>
								<%-- <input type="submit" hidden>
								<div name="pName">${product.pName}</div> --%>
								<span class="stext-105 cl3">
									<fmt:formatNumber value="${product.selPrice}" type="number" />
									&#8361;
								</span>
							</div>
							<modoo:dib dib="${product.dib}" />
						</div>
					</div>
			</div>
			</c:forEach>
		</div>
		<!-- Load more 
			<div class="flex-c-m flex-w w-full p-t-45">
				<a id="more" href="#"
					class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn3 p-lr-15 trans-04">
					Load More </a>
			</div>
			-->
</div>
</c:if>
</div>
<%@include file="common/footer.jsp"%>
<!--QuickView Modal -->
<div class="wrap-modal1 js-quickView p-t-60 p-b-20">
	<div class="overlay-modal1 js-hide-quickView"></div>
	<div class="container">
		<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
			<button class="how-pos3 hov3 trans-04 js-hide-quickView">
				<img src="/ModooShop/images/icons/icon-close.png" alt="CLOSE">
			</button>
			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="gallery-lb">
								<div class="pImg-div">
									<div class="wrap-pic-w pos-relative m-l-30">
										<img src="" class="pImg-img">
										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04 pImg-a" href="">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg item_detail_tit">
						<h4 class="mtext-105 cl2 js-name-detail p-b-14 pName"></h4>
						<hr>
						<table class="item_detail_list">
							<tr>
								<td>정가</td>
								<td colspan="2">
									<span class="fixPrice"></span>
									원
								</td>
							</tr>
							<tr>
								<td>판매가</td>
								<td colspan="2" class="item_price">
									<span id="price" class="selPrice"></span>
									원
								</td>
							</tr>
							<tr>
								<td>게임 인원</td>
								<td colspan="2" class="rePerson"></td>
							</tr>
							<tr>
								<td>게임 연령</td>
								<td colspan="2" class="reAge"></td>
							</tr>
							<tr>
								<td>배송비</td>
								<td colspan="2">
									<strong id="deliveryFee">2,500</strong>
								</td>
							</tr>
							<tr>
								<td>
									<div class="wrap-num-product flex-w m-tb-10 m-l-30">
										<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>
										<input class="mtext-104 cl3 txt-center num-product" type="number" name="pCnt" value="1">
										<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m ">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>
								</td>
								<td>결제 예정금액</td>
								<td>
									<span id="totalPrice" class="totalPrice"></span>
									원
								</td>
							</tr>
						</table>
						<hr>
						<!--  -->
						<div class="p-t-33">
							<div class="row flex-c">
								<button class="flex-c-m m-r-10 stext-106 cl2 size-126 bg0 bor20 hov-btn3 p-lr-15 trans-04 js-addcart-quickView cart-btn">장바구니</button>
								<button class="flex-c-m m-lr-10 stext-106 cl2 size-126 bg0 bor20 hov-btn3 p-lr-15 trans-04 js-addwish-quickView dib-btn">찜하기</button>
								<button class="flex-c-m m-l-10 stext-106 cl0 size-101 bg1 bor20 hov-btn1 p-lr-15 trans-04 ">결제하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--===============================================================================================-->
<script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="../vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="../vendor/bootstrap/js/popper.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="../vendor/select2/select2.min.js"></script>
<!-- 	<script>
		function order(pNum, pCnt) {
			location.href = "shOrder.do?pNum=${product.pNum}&pcnt=${product.pCnt}"
		}

		function addDib(pNum) {
			location.href = "dib.do?pNum=${product.pNum}"
		}

		function addCart(pNum) {
			location.href = "shopping.do?pNum=${product.pNum}&pcnt=${product.pNum}"
		}
	</script> -->
<script>
	$(".js-select2").each(function() {
		$(this).select2({
			minimumResultsForSearch : 20,
			dropdownParent : $(this).next('.dropDownSelect2')
		});
	})
</script>
<!--===============================================================================================-->
<script src="../vendor/daterangepicker/moment.min.js"></script>
<script src="../vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="../vendor/slick/slick.min.js"></script>
<script src="../js/slick-custom.js"></script>
<!--===============================================================================================-->
<script src="../vendor/parallax100/parallax100.js"></script>
<script>
	$('.parallax100').parallax100();
</script>
<!--===============================================================================================-->
<script src="../vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<script>
	$('.gallery-lb').each(function() { // the containers for all your galleries
		$(this).magnificPopup({
			delegate : 'a', // the selector for gallery item
			type : 'image',
			gallery : {
				enabled : true
			},
			mainClass : 'mfp-fade'
		});
	});
</script>
<!--===============================================================================================-->
<script src="../vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
<script src="../vendor/sweetalert/sweetalert.min.js"></script>
<!--===============================================================================================-->
<script src="../vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
	$('.js-pscroll').each(function() {
		$(this).css('position', 'relative');
		$(this).css('overflow', 'hidden');
		var ps = new PerfectScrollbar(this, {
			wheelSpeed : 1,
			scrollingThreshold : 1000,
			wheelPropagation : false,
		});

		$(window).on('resize', function() {
			ps.update();
		})
	});

	function search() {
		var pSortBy = document.getElementById("sortBy").getAttribute('data-value');
		var pPrice = document.getElementById("price").getAttribute('data-value');
		var pTags = document.getElementById("tags").getAttribute('data-value');

		$.ajax({
			type : 'POST', //POST 방식으로 보낼래
			url : 'search', // 임의로 했음
			async : false,
			data : {
				pSortBy : pSortBy,
				pPrice : pPrice,
				pTags : pTags
			},
			success : function(result) {
				console.log('로그 : 조회 성공');
				console.log(result);
				if (result == 1) {
					return true;
				} else {
					alert("조회정보를 찾을 수 없습니다.")
					return false;
				}
			}
		});
	}
</script>
<!--===============================================================================================-->
<script src="../js/main.js"></script>
</body>
</html>