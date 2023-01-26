<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>상품목록</title>
	<%@include file="common/header.jsp" %>

	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">
		<div id="product-list" class="container">
			<div class="flex-w flex-sb-m p-b-52">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button
						class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1"
						data-filter="*">전체 상품</button>

					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".one">1인 가능 </button>

					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".two">2인 추천</button>
				</div>

				<div class="flex-w flex-c-m m-tb-10">
					<div
						class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
						<i
							class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
						<i
					  		class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Filter
					</div>

					<div
						class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
						<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
						<i
							class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Search
					</div>
				</div>

				<!-- Search product -->
				<div class="dis-none panel-search w-full p-t-10 p-b-15">
					<div class="bor8 dis-flex p-l-15">
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>

						<input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text"
							name="search-product" placeholder="Search">
					</div>
				</div>

				<!-- Filter -->
				<div class="dis-none panel-filter w-full p-t-10">
					<div class="wrap-filter bg10 w-full p-lr-40 p-t-27 p-lr-15-sm">
						<div id="sortbyFilter" class="filter-col1 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">Sort By</div>

							<a href="#"
								class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8">
								추천순 </a> <a href="#"
								class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8">
								판매인기순 </a> <a href="#"
								class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8">
								낮은가격순 </a> <a href="#"
								class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8">
								높은가격순 </a>
						</div>

						<div id="priceFilter" class="filter-col2 p-r-15 p-b-27 m-t-10">
							<div class="mtext-102 cl2 p-b-15">Price</div>
							<a href="#"
								class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8">
								All </a> <a href="#"
								class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8">
								0 ~ 10,000 &#8361; </a> <a href="#"
								class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8">
								10,000 ~ 20,000 &#8361; </a> <a href="#"
								class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8">
								20,000 ~ 30,000 &#8361; </a> <a href="#"
								class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8">
								30,000 ~ 40,000 &#8361; </a> <a href="#"
								class="hov-tag1 stext-118 cl6 size-304 bor7 p-lr-15 p-tb-3 trans-04 m-b-8 m-r-8">
								40,000 &#8361; ~ </a>
						</div>


						<div class="filter-col4 p-b-27 m-t-10">
							<div class="mtext-102 cl2 p-b-15">Tags</div>

							<div id="tagsFilter" class="flex-w p-t-4 m-r--5">
								<a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									1인용 </a> <a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									2인용 </a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row isotope-grid">
				<div class="gutter-sizer"></div>
				<c:forEach items="list" var="productDto">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${product.cateNum }">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img
								src="https://cdn-pro-web-251-104-godomall.spdycdn.net/boardgtr9139_godomall_com/data/goods/20/07/29//1000007239/modify_main_063.jpg"
								width="180" alt="IMG-PRODUCT"> <a href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn3 p-lr-15 trans-04 js-show-modal1">
								Quick View </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<!-- <a href="product-detail.html"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									 </a> --> 
									 <input type="submit" hidden>
									 <div name="pName">${product.pName}</div><span class="stext-105 cl3"> ${product.selPrice}원 </span>
							</div>
							
							<div class="block2-txt-child2 flex-r p-t-3">
								<a href="#"
									class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
									<img class="icon-heart1 dis-block trans-04"
									src="/ModooShop/images/icons/icon-heart-01.png" alt="ICON"> <img
									class="icon-heart2 dis-block trans-04 ab-t-l"
									src="/ModooShop/images/icons/icon-heart-02.png" alt="ICON">
								</a>
							</div>
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
	</div>
	
	<%@include file="common/footer.jsp" %>

	<!-- Quick View -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="/ModooShop/images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

								<div class="slick3 gallery-lb">
									<div class="item-slick3"
										data-thumb="https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/02/08//1000006569/register_detail_025.jpg">
										<div class="wrap-pic-w pos-relative">
											<img
												src="https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/02/08//1000006569/register_detail_025.jpg"
												alt="IMG-PRODUCT"> <a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-01.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/1000000014_magnify_046.jpg">
										<div class="wrap-pic-w pos-relative">
											<img
												src="https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/1000000014_magnify_046.jpg"
												alt="IMG-PRODUCT"> <a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-02.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/21/08/33//1000007566/register_detail_046.jpg">
										<div class="wrap-pic-w pos-relative">
											<img
												src="https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/21/08/33//1000007566/register_detail_046.jpg"
												alt="IMG-PRODUCT"> <a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-03.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg item_detail_tit">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">할리갈리</h4>

							<hr>

							<table class="item_detail_list">
								<tr>
									<td>정가</td>
									<td colspan="2"><del>
											<span>${product.fixPrice}</span>원
										</del></td>
								</tr>
								
								<tr>
									<td>판매가</td>
									<td colspan="2" class="item_price"><span id="price">${product.selPrice}</span>원</td>
								</tr>
								<tr>
									<td>게임 인원</td>
									<td colspan="2">${product.rePerson}명</td>
								</tr>
								<tr>
									<td>게임 연령</td>
									<td colspan="2">${product.reAge}세이상</td>
								</tr>
								<tr>
									<td>배송비</td>
									<td colspan="2"><strong id="deliveryFee">2,500</strong></td>
								</tr>
								<tr>
									<td>
										<div class="wrap-num-product flex-w m-tb-10 m-l-30">
											<div
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product"
												type="number" name="num-product" value="1">

											<div
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m ">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
									</td>
									<td>결제 예정금액</td>
									<td><span id="totalPrice">${product.price}</span>원</td>
								</tr>

							</table>

							<hr>

							<!--  -->
							<div class="p-t-33">
								<div class="row flex-c">
									<button onclick="function addCart()"
										class="flex-c-m m-r-10 stext-101 cl2 size-126 bg0 bor20 hov-btn3 p-lr-15 trans-04 js-addcart-detail">
										장바구니</button>
									<button onclick="function addDib()"
										class="flex-c-m m-lr-10 stext-101 cl2 size-126 bg0 bor20 hov-btn3 p-lr-15 trans-04 js-addwish-detail">
										찜하기</button>
									<button type="submit" onclick="function order()"
										class="flex-c-m m-l-10 stext-104 cl0 size-105 bg1 bor20 hov-btn1 p-lr-15 trans-04 " type="submit">
										결제하기</button>
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
		<script>
	function order(pNum,pCnt){
		location.href="shOrder.do?pNum=${product.pNum}&pcnt=${product.pCnt}"
	}
	
	function addDib(pNum){
		location.href="dib.do?pNum=${product.pNum}"
	}
	
	function addCart(pNum){
		location.href="shopping.do?pNum=${product.pNum}&pcnt=${product.pNum}"
	}
	
	</script>
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
		<script>
			$('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
				e.preventDefault();
			});

			$('.js-addwish-b2').each(
					function() {
						var nameProduct = $(this).parent().parent().find(
								'.js-name-b2').html();
						$(this).on(
								'click', 
								function() {
									swal(nameProduct, "is added to wishlist !",
											"success");

									$(this).addClass('js-addedwish-b2');
									$(this).off('click');
								});
					});

			$('.js-addwish-detail').each(
					function() {
						var nameProduct = $(this).parent().parent().parent()
								.find('.js-name-detail').html();

						$(this).on(
								'click',
								function() {
									swal(nameProduct, "is added to wishlist !",
											"success");

									$(this).addClass('js-addedwish-detail');
									$(this).off('click');
								});
					});

			/*---------------------------------------------*/

			$('.js-addcart-detail').each(
					function() {
						var nameProduct = $(this).parent().parent().parent()
								.parent().find('.js-name-detail').html();
						$(this).on('click', function() {
							swal(nameProduct, "is added to cart !", "success");
						});
			});
		</script>
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
		</script>
		<!--===============================================================================================-->
		<script src="../js/main.js"></script>
</body>
</html>