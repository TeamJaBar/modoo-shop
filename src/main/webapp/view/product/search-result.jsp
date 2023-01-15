<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>검색 결과</title>

<style>
.order-wrap {
	width: 593px;
	margin: 20px auto 40px auto;
}

.order-agreement-wrap .order-title {
	overflow: hidden;
	border-bottom: 1px solid #999999;
}

.order-title h2 {
	font-size: 28px;
	margin: 0 0 20px 0;
	font-weight: bold;
}

.order-ok-box .order-ok-title {
	text-align: center;
	background: url(images/img_order_ok.png) no-repeat center 0;
	padding: 50px 0 0 0;
}

.order-ok-box .order-ok-title p {
	padding: 20px 0 20px 0;
	color: #989898;
	letter-spacing: -0.5px;
}

.order-ok-box .order-ok-title p span {
	font-weight: bold;
	color: #222222;
}

.order-ok-box .order-ok-title.complete {
	padding: 20px 0 0 0;
	font-size: 18px;
	color: #222222;
}

.order-ok-box .order-ok-titlep {
	padding: 20px 0 20px 0;
	color: #989898;
	letter-spacing: -0.5px;
}

.order-ok-box .order-ok-title.complete strong {
	font-weight: bold;
}

.order-ok-box .order-ok-titlep span {
	font-weight: bold;
	color: #222222;
}

.order-ok-box .btn-order-section {
	border-top: 1px solid #dbdbdb;
}

.order-ok-box .btn-order-section ul {
	overflow: hidden;
	margin: 20px 0 0 0;
	text-align: center;
	font-size: 0;
}

.order-ok-box .btn-order-section li:first-child {
	margin: 0;
}

.order-ok-box .btn-order-section li {
	display: inline-block;
	margin: 0 0 0 10px;
}

.order-ok-box .btn-order-section li button {
	width: 150px;
	height: 42px;
	border: 1px solid #cccccc;
	background: #fff;
	color: #3e3d3c;
	font-weight: bold;
	font-size: 13px;
	cursor: pointer;
}

.order-ok-box .btn-order-section .btn-login {
	background: #181818;
	border: 1px solid #181818;
	color: #fff;
}

.table-shopping-cart .table_head th {
	font-family: Poppins-Bold;
	font-size: 10px;
	color: #555;
	text-transform: uppercase;
	line-height: 1.6;
	padding-top: 15px;
	padding-bottom: 15px;
}

.order-content .btn-center-box, .order-warning+.btn-center-box {
	margin: 35px 0 0 0;
}

.order-content {
	padding: 70px 60px;
	border: 1px solid #dbdbdb;
}

.order-ok-box .btn-order-section {
	border-top: 1px solid #dbdbdb;
}
</style>

<%@include file="../common/header.jsp"%>

<!-- Product -->
<div class="bg0 m-t-23 p-b-140">
	<div id="product-list" class="container">
		<div class="flex-w flex-sb-m p-b-52 m-t-50">
			<h3 class="stext-119">
				<span class="mtext-105 cl13">'할리갈리'</span> 검색 결과
			</h3>
		</div>

		<div class="row isotope-grid">
			<div class="gutter-sizer"></div>
			<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item one">
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
							<a href="product-detail.html"
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								방방곡곡 세계유량 </a> <span class="stext-105 cl3"> 16,320원 </span>
						</div>

						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#"
								class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<img class="icon-heart1 dis-block trans-04"
								src="images/icons/icon-heart-01.png" alt="ICON"> <img
								class="icon-heart2 dis-block trans-04 ab-t-l"
								src="images/icons/icon-heart-02.png" alt="ICON">
							</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item two">
				<!-- Block2 -->
				<div class="block2">
					<div class="block2-pic hov-img0">
						<img
							src="https://cdn-pro-web-251-104-godomall.spdycdn.net/boardgtr9139_godomall_com/data/goods/18/07/27/1000006170/1000006170_main_068.jpg"
							width="180" alt="IMG-PRODUCT"> <a href="#"
							class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn3 p-lr-15 trans-04 js-show-modal1">
							Quick View </a>
					</div>

					<div class="block2-txt flex-w flex-t p-t-14">
						<div class="block2-txt-child1 flex-col-l ">
							<a href="product-detail.html"
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 꼬마
								유령의 비밀통로 </a> <span class="stext-105 cl3"> 14,850원 </span>
						</div>

						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#"
								class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<img class="icon-heart1 dis-block trans-04"
								src="images/icons/icon-heart-01.png" alt="ICON"> <img
								class="icon-heart2 dis-block trans-04 ab-t-l"
								src="images/icons/icon-heart-02.png" alt="ICON">
							</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item one">
				<!-- Block2 -->
				<div class="block2">
					<div class="block2-pic hov-img0">
						<img
							src="https://cdn-pro-web-251-104-godomall.spdycdn.net/boardgtr9139_godomall_com/data/goods/19/01/02//1000006493/modify_main_084.jpg"
							alt="IMG-PRODUCT"> <a href="#"
							class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn3 p-lr-15 trans-04 js-show-modal1">
							Quick View </a>
					</div>

					<div class="block2-txt flex-w flex-t p-t-14">
						<div class="block2-txt-child1 flex-col-l ">
							<a href="product-detail.html"
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 큐비즈
							</a> <span class="stext-105 cl3"> 20,200원 </span>
						</div>

						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#"
								class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<img class="icon-heart1 dis-block trans-04"
								src="images/icons/icon-heart-01.png" alt="ICON"> <img
								class="icon-heart2 dis-block trans-04 ab-t-l"
								src="images/icons/icon-heart-02.png" alt="ICON">
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item two">
				<!-- Block2 -->
				<div class="block2">
					<div class="block2-pic hov-img0">
						<img
							src="https://cdn-pro-web-251-104-godomall.spdycdn.net/boardgtr9139_godomall_com/data/goods/20/07/28//1000007205/modify_main_043.jpg"
							alt="IMG-PRODUCT"> <a href="#"
							class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn3 p-lr-15 trans-04 js-show-modal1">
							Quick View </a>
					</div>

					<div class="block2-txt flex-w flex-t p-t-14">
						<div class="block2-txt-child1 flex-col-l ">
							<a href="product-detail.html"
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								모두의마블 메가디럭스/보드게임 </a> <span class="stext-105 cl3"> 52,500원 </span>
						</div>

						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#"
								class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<img class="icon-heart1 dis-block trans-04"
								src="images/icons/icon-heart-01.png" alt="ICON"> <img
								class="icon-heart2 dis-block trans-04 ab-t-l"
								src="images/icons/icon-heart-02.png" alt="ICON">
							</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item one">
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
							<a href="product-detail.html"
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								방방곡곡 세계유량 </a> <span class="stext-105 cl3"> 16,320원 </span>
						</div>

						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#"
								class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<img class="icon-heart1 dis-block trans-04"
								src="images/icons/icon-heart-01.png" alt="ICON"> <img
								class="icon-heart2 dis-block trans-04 ab-t-l"
								src="images/icons/icon-heart-02.png" alt="ICON">
							</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item two">
				<!-- Block2 -->
				<div class="block2">
					<div class="block2-pic hov-img0">
						<img
							src="https://cdn-pro-web-251-104-godomall.spdycdn.net/boardgtr9139_godomall_com/data/goods/18/07/27/1000006170/1000006170_main_068.jpg"
							width="180" alt="IMG-PRODUCT"> <a href="#"
							class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn3 p-lr-15 trans-04 js-show-modal1">
							Quick View </a>
					</div>

					<div class="block2-txt flex-w flex-t p-t-14">
						<div class="block2-txt-child1 flex-col-l ">
							<a href="product-detail.html"
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 꼬마
								유령의 비밀통로 </a> <span class="stext-105 cl3"> 14,850원 </span>
						</div>

						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#"
								class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<img class="icon-heart1 dis-block trans-04"
								src="images/icons/icon-heart-01.png" alt="ICON"> <img
								class="icon-heart2 dis-block trans-04 ab-t-l"
								src="images/icons/icon-heart-02.png" alt="ICON">
							</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item world">
				<!-- Block2 -->
				<div class="block2">
					<div class="block2-pic hov-img0">
						<img
							src="https://cdn-pro-web-251-104-godomall.spdycdn.net/boardgtr9139_godomall_com/data/goods/19/01/02//1000006493/modify_main_084.jpg"
							alt="IMG-PRODUCT"> <a href="#"
							class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn3 p-lr-15 trans-04 js-show-modal1">
							Quick View </a>
					</div>

					<div class="block2-txt flex-w flex-t p-t-14">
						<div class="block2-txt-child1 flex-col-l ">
							<a href="product-detail.html"
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 큐비즈
							</a> <span class="stext-105 cl3"> 20,200원 </span>
						</div>

						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#"
								class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<img class="icon-heart1 dis-block trans-04"
								src="images/icons/icon-heart-01.png" alt="ICON"> <img
								class="icon-heart2 dis-block trans-04 ab-t-l"
								src="images/icons/icon-heart-02.png" alt="ICON">
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item one">
				<!-- Block2 -->
				<div class="block2">
					<div class="block2-pic hov-img0">
						<img
							src="https://cdn-pro-web-251-104-godomall.spdycdn.net/boardgtr9139_godomall_com/data/goods/20/07/28//1000007205/modify_main_043.jpg"
							alt="IMG-PRODUCT"> <a href="#"
							class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn3 p-lr-15 trans-04 js-show-modal1">
							Quick View </a>
					</div>

					<div class="block2-txt flex-w flex-t p-t-14">
						<div class="block2-txt-child1 flex-col-l ">
							<a href="product-detail.html"
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								모두의마블 메가디럭스/보드게임 </a> <span class="stext-105 cl3"> 52,500원 </span>
						</div>

						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#"
								class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<img class="icon-heart1 dis-block trans-04"
								src="images/icons/icon-heart-01.png" alt="ICON"> <img
								class="icon-heart2 dis-block trans-04 ab-t-l"
								src="images/icons/icon-heart-02.png" alt="ICON">
							</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item two">
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
							<a href="product-detail.html"
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								방방곡곡 세계유량 </a> <span class="stext-105 cl3"> 16,320원 </span>
						</div>

						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#"
								class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<img class="icon-heart1 dis-block trans-04"
								src="images/icons/icon-heart-01.png" alt="ICON"> <img
								class="icon-heart2 dis-block trans-04 ab-t-l"
								src="images/icons/icon-heart-02.png" alt="ICON">
							</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item one">
				<!-- Block2 -->
				<div class="block2">
					<div class="block2-pic hov-img0">
						<img
							src="https://cdn-pro-web-251-104-godomall.spdycdn.net/boardgtr9139_godomall_com/data/goods/18/07/27/1000006170/1000006170_main_068.jpg"
							width="180" alt="IMG-PRODUCT"> <a href="#"
							class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn3 p-lr-15 trans-04 js-show-modal1">
							Quick View </a>
					</div>

					<div class="block2-txt flex-w flex-t p-t-14">
						<div class="block2-txt-child1 flex-col-l ">
							<a href="product-detail.html"
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 꼬마
								유령의 비밀통로 </a> <span class="stext-105 cl3"> 14,850원 </span>
						</div>

						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#"
								class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<img class="icon-heart1 dis-block trans-04"
								src="images/icons/icon-heart-01.png" alt="ICON"> <img
								class="icon-heart2 dis-block trans-04 ab-t-l"
								src="images/icons/icon-heart-02.png" alt="ICON">
							</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item two">
				<!-- Block2 -->
				<div class="block2">
					<div class="block2-pic hov-img0">
						<img
							src="https://cdn-pro-web-251-104-godomall.spdycdn.net/boardgtr9139_godomall_com/data/goods/19/01/02//1000006493/modify_main_084.jpg"
							alt="IMG-PRODUCT"> <a href="#"
							class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn3 p-lr-15 trans-04 js-show-modal1">
							Quick View </a>
					</div>

					<div class="block2-txt flex-w flex-t p-t-14">
						<div class="block2-txt-child1 flex-col-l ">
							<a href="product-detail.html"
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 큐비즈
							</a> <span class="stext-105 cl3"> 20,200원 </span>
						</div>

						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#"
								class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<img class="icon-heart1 dis-block trans-04"
								src="images/icons/icon-heart-01.png" alt="ICON"> <img
								class="icon-heart2 dis-block trans-04 ab-t-l"
								src="images/icons/icon-heart-02.png" alt="ICON">
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item one">
				<!-- Block2 -->
				<div class="block2">
					<div class="block2-pic hov-img0">
						<img
							src="https://cdn-pro-web-251-104-godomall.spdycdn.net/boardgtr9139_godomall_com/data/goods/20/07/28//1000007205/modify_main_043.jpg"
							alt="IMG-PRODUCT"> <a href="#"
							class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn3 p-lr-15 trans-04 js-show-modal1">
							Quick View </a>
					</div>

					<div class="block2-txt flex-w flex-t p-t-14">
						<div class="block2-txt-child1 flex-col-l ">
							<a href="product-detail.html"
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								모두의마블 메가디럭스/보드게임 </a> <span class="stext-105 cl3"> 52,500원 </span>
						</div>

						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#"
								class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<img class="icon-heart1 dis-block trans-04"
								src="images/icons/icon-heart-01.png" alt="ICON"> <img
								class="icon-heart2 dis-block trans-04 ab-t-l"
								src="images/icons/icon-heart-02.png" alt="ICON">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Load more -->
		<div class="flex-c-m flex-w w-full p-t-45">
			<a id="more" href="#"
				class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn3 p-lr-15 trans-04">
				Load More </a>
		</div>
	</div>
</div>


<%@include file="../common/footer.jsp"%>

<!-- Modal1 -->
<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
	<div class="overlay-modal1 js-hide-modal1"></div>

	<div class="container">
		<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
			<button class="how-pos3 hov3 trans-04 js-hide-modal1">
				<img src="images/icons/icon-close.png" alt="CLOSE">
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
										<span>40,000</span>원
									</del></td>
							</tr>
							<tr>
								<td>판매가</td>
								<td colspan="2" class="item_price"><span id="price">26,400</span>원</td>
							</tr>
							<tr>
								<td>게임 인원</td>
								<td colspan="2">2~4명</td>
							</tr>
							<tr>
								<td>게임 연령</td>
								<td colspan="2">8세이상</td>
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
								<td><span id="totalPrice">26,400</span>원</td>
							</tr>

						</table>

						<hr>

						<!--  -->
						<div class="p-t-33">
							<div class="row flex-c">
								<button
									class="flex-c-m m-r-10 stext-101 cl2 size-126 bg0 bor20 hov-btn3 p-lr-15 trans-04 js-addcart-detail">
									장바구니</button>
								<button
									class="flex-c-m m-lr-10 stext-101 cl2 size-126 bg0 bor20 hov-btn3 p-lr-15 trans-04 js-addwish-b2">
									찜하기</button>
								<button
									class="flex-c-m m-l-10 stext-104 cl0 size-101 bg1 bor20 hov-btn1 p-lr-15 trans-04 ">
									결제하기</button>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>

	<!--===============================================================================================-->
	<script src="../../vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="../../vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../../vendor/bootstrap/js/popper.js"></script>
	<script src="../../vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../../vendor/select2/select2.min.js"></script>
	<script>
			$(".js-select2").each(function() {
				$(this).select2({
					minimumResultsForSearch : 20,
					dropdownParent : $(this).next('.dropDownSelect2')
				});
			})
		</script>
	<!--===============================================================================================-->
	<script src="../../vendor/daterangepicker/moment.min.js"></script>
	<script src="../../vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../../vendor/slick/slick.min.js"></script>
	<script src="../../js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="../../vendor/parallax100/parallax100.js"></script>
	<script>
			$('.parallax100').parallax100();
		</script>
	<!--===============================================================================================-->
	<script src="../../vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
	<script src="../../vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="../../vendor/sweetalert/sweetalert.min.js"></script>
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
	<script src="../../vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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
	<script src="../../js/main.js"></script>
	</body>
</html>