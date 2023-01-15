<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<title>주문완료</title>

<style>
* {
	font-family: GmarketSansMedium;
}

.order-agreement-content .form-element em {
	font-weight: bold;
	font-style: normal;
}

.sub-content {
	position: relative;
	width: 1200px;
	margin: 0 auto;
	padding: 0 0;
}

.context-box {
	float: left;
	width: 100%;
}

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

.order-content {
	padding: 70px 60px;
	border: 1px solid #dbdbdb;
}

.order-ok-box .order-ok-title {
	text-align: center;
	background: url(images/img_order_ok.png) no-repeat center 0;
	padding: 2px 0 0 0;
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

.order-agreement-wrap .order-title ol {
	float: right;
	line-height: 62px;
}

.order-agreement-wrap .order-title .page-on {
	color: #181818;
}

.order-agreement-wrap .order-title ol li {
	float: left;
	font-size: 14px;
	color: #d1d1d1;
}

.order-agreement-wrap .order-title li span {
	font-size: 16px;
	font-weight: bold;
}

.order-agreement-wrap .order-title li span>img {
	padding: 0 14px;
	vertical-align: -1px;
}

.order-agreement-wrap .order-content {
	width: 743px;
	margin: 0 auto;
	border: none;
}

.order-content {
	padding: 70px 60px;
	border: 1px solid #dbdbdb;
}

.order-agreement-wrap .order-agreement-content {
	padding: 30px 0 0 0;
	border-top: 1px solid #999999;
}

.order-agreement-content .order-agreement-box {
	margin: 0 0 30px 0;
}

.form-element {
	display: inline-block;
	overflow: hidden;
	position: relative;
}

.form-element input {
	position: absolute;
	top: 3px;
	left: 1px;
	width: 0;
	z-index: -1;
}

.form-element label {
	position: relative;
	top: 0;
	left: 0;
	display: inline-block;
	min-width: 20px;
	min-height: 20px;
	padding: 0 0 0 27px;
	background: url("images/check_off.png") no-repeat 1px top;
}

.order-agreement-content .form-element span {
	color: #717171;
	font-size: 11px;
}

.order-agreement-content .form-element span>a {
	padding: 0 10px 0 5px;
	color: #181818;
	font-size: 12px;
	background: url("images/icon_order_step_off.png") no-repeat right center;
	text-decoration: underline;
}

.order-agreement-content .agreement-box {
	overflow-x: hidden;
	overflow-y: auto;
	height: 89px;
	margin: 10px 0 0;
	padding: 20px;
	border: 1px solid #e6e6e6;
	border-top: 1px solid #999999;
	line-height: 18px;
}

.order-content .btn-center-box, .order-warning+.btn-center-box {
	margin: 35px 0 0 0;
}

.btn-center-box {
	text-align: center;
}

.btn-order-prev {
	width: 150px;
	height: 45px;
	margin: 35px 0 0 0;
	color: #3e3d3c;
	font-size: 14px;
	border: 1px solid #cccccc;
	background: #ffffff;
	cursor: pointer;
}

.btn-center-box button+button, .btn-left-box button+button,
	.btn-right-box button+button {
	margin-left: 6px;
}

.btn-order-next {
	width: 150px;
	height: 45px;
	margin: 35px 0 0 0;
	color: #ffffff;
	font-size: 14px;
	border: 1px solid #181818;
	background: #181818;
	cursor: pointer;
	font-weight: bold;
}
</style>

<%@include file="../common/header.jsp"%>

	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('../../images/bg-img-01.png');">
		<h2 class="ltext-105 cl0 txt-center">주문완료</h2>
	</section>


	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">

			<div class="sub-content">
				<div class="content-box">
					<div class="order-agreement-wrap">

						<div class="order-title">
							<h2>주문완료</h2>
							<ol>
								<li><span>01</span> 장바구니 <span> <img
										src="images/icon_join_step_on.png" alt="화살표">
								</span></li>
								<li><span>02</span> 주문서작성/결제 <span> <img
										src="images/icon_join_step_off.png" alt="화살표">
								</span></li>
								<li class="page-on"><span>03</span> 주문완료</li>
							</ol>
						</div>


						<div class="order-content">
							<div class="order-ok-box">
								<div class="order-ok-title">
									<p class="complete">
										주문이 <strong>완료</strong> 되었습니다.
									</p>
									<p class="complete">감사합니다.</p>
								</div>
								<div class="btn-order-section">
									<ul>
										<li><button id="btnShoping" type="button"
												onclick="location.href='product-list.html'">계속 쇼핑하기</button></li>
										<li><button id="btnShoping" type="button"
												onclick="location.href='main.html'">홈으로</button></li>

									</ul>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>



		</div>
	</section>



	<%@include file="../common/footer.jsp"%>

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
		$(".js-select2").each(function () {
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="../../vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<!--===============================================================================================-->
	<script src="../../vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function () {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function () {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="../../js/main.js"></script>



</body>

</html>