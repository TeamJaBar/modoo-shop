<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
<title>장바구니</title>

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

<script type="text/javascript">
function isDelete(){
	confirm("정말 삭제하시겠습니까?");
}
</script>



	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('../../images/bg-img-01.png');">
		<h2 class="ltext-105 cl0 txt-center">
			장바구니
		</h2>
	</section>


	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04"> Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <span class="stext-109 cl4"> 장바구니 </span>
		</div>
	</div>


	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85" action="order.html">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-1">선택</th>
									<th class="column-2">상품 / 옵션 정보</th>
									<th class="column-3">상품 / 할인 금액</th>
									<th class="column-4">수량</th>
									<th class="column-5">합계금액</th>
								</tr>

								<tr class="table_row">
									<td class="column-1">
										<input type="checkbox" id="chk" name="chk"/>
									</td>
									<td class="column-2"><img src="images/p001.jpg" alt="IMG" style="width: 50px; height: 50px;">샘플 데이터1</td>
									<td class="column-3"> 40,000원 /<br><span style="font-size: 10px; text-align: right;">12,800원</span></td>
									<td class="column-4">
										<div class="wrap-num-product flex-w m-l-auto m-r-0">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
									</td>
									<td class="column-5">27,200원</td>
								</tr>

								<tr class="table_row">
									<td class="column-1">
										<input type="checkbox" id="chk" name="chk"/>
									</td>
									<td class="column-2"><img src="images/p002.jpg" alt="IMG" style="width: 50px; height: 50px;">샘플 데이터2</td>
									<td class="column-3"> 7,000원 /<br><span style="font-size: 10px; text-align: right;">2,800원</span></td>
									<td class="column-4">
										<div class="wrap-num-product flex-w m-l-auto m-r-0">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
									</td>
									<td class="column-5">4,200원</td>
								</tr>
							</table>
						</div>

						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
								<a onclick="del()" href="#">선택 상품 삭제</a>
							</div>
							
							<div class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
								<a href="product.html">쇼핑 계속하기</a>
							</div>
						</div>
						
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							최종 결제 금액
						</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2" style="font-size: 12px;">
									총 2개의 상품금액:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
									&nbsp;47,000원
								</span>
							</div>

							<div class="size-208">
								<span class="stext-110 cl2" style="font-size: 12px;">
									할인금액:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
									-15,600원
								</span>
							</div>

							<div class="size-208">
								<span class="stext-110 cl2" style="font-size: 12px;">
									배송비:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
									&nbsp;&nbsp;2,500원
								</span>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									합계:
								</span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2">
									24,500원
								</span>
							</div>
						</div>

						<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" type="submit" onclick="return check()">
							선택 상품 주문
						</button>
						<div>&nbsp;</div>
						<button id="all" onclick="allselect()" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" type="submit">
							전체 상품 주문
						</button>
					</div>
				</div>
			</div>
		</div>
	</form>


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
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="../../vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
	<script>
		function allselect(){

// 체크박스의 이름과 prop 메서드를 사용하여 전체 선택
$('[name=chk]').prop('checked', true);

}

function del(){
	if($("#chk").is(":checked") == true){
		var ans = confirm("선택하신 상품을 삭제하시겠습니까?");

if(ans){
	alert("삭제되었습니다.");
} else{
	alert("취소되었습니다.");
}	
	} else {
		alert("선택된 상품이 없습니다.");
	}
}

function check(){
	if($("#chk").is(":checked") == true){
		return true;
	} else {
		alert("선택된 상품이 없습니다.");
		return false;
	}
}
	</script>

</body>
</html>