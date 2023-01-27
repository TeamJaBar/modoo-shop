<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
<title>장바구니</title>
<link rel="stylesheet" type="text/css" href="../css/shopping-cart.css">
<%@include file="common/header.jsp"%>
<script type="text/javascript">
	function isDelete() {
		confirm("정말 삭제하시겠습니까?");
	}
</script>
<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('../images/bg-img-01.png');">
	<h2 class="ltext-105 cl0 txt-center">장바구니</h2>
</section>
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
								<th class="column-2">상품</th>
								<th class="column-3">상품 / 할인 금액</th>
								<th class="column-4">수량</th>
								<th class="column-5">합계금액</th>
							</tr>
							<tr class="cartTable_row">
								<td class="column-1">
									<input type="checkbox" class="chk1" id="chk" name="chk" value="1" checked />
								</td>
								<td class="column-2">
									<img src="/ModooShop/images/p001.jpg" alt="샘플 데이터1" style="width: 90px; height: 70px;">
								</td>
								<td class="column-3">
									<span id="price1">40,000</span>
									원<br>
									<span style="font-size: 10px;">
										/
										<span id="salePrice1">12,800</span>
										원
									</span>
								</td>
								<td class="column-4">
									<div class="wrap-num-product flex-c m-tb-10 m-l-10">
										<div id="1" class="btn-num-cart-down cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>
										<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">
										<div id="1" class="btn-num-cart-up cl8 hov-btn3 trans-04 flex-c-m ">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>
								</td>
								<td class="column-5">
									<span id="totalPrice1">27,200</span>
									원<br>
								</td>
							</tr>
							<tr class="cartTable_row">
								<td class="column-1">
									<input type="checkbox" class="chk2" id="chk" name="chk" value="2" checked />
								</td>
								<td class="column-2">
									<img src="/ModooShop/images/p002.jpg" alt="샘플 데이터2" style="width: 90px; height: 70px;">
								</td>
								<td class="column-3">
									<span id="price2">7,000</span>
									원<br>
									<span style="font-size: 10px; text-align: right;">
										/
										<span id="salePrice2">2,800</span>
										원
									</span>
								</td>
								<td class="column-4">
									<div class="wrap-num-product flex-c m-tb-10 m-l-10">
										<div id="2" class="btn-num-cart-down cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>
										<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">
										<div id="2" class="btn-num-cart-up cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>
								</td>
								<td class="column-5">
									<span id="totalPrice2">4,200</span>
									원<br>
									<!--<span id="totalSaleprice" style="font-size: 10px; text-align: right;"></span>-->
								</td>
							</tr>
						</table>
					</div>
					<div class="flex-w flex-c m-t-50 p-lr-15-sm">
						<div class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer" onclick="del()" href="#">선택 상품 삭제</div>
					</div>
				</div>
			</div>
			<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
				<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
					<h4 class="mtext-109 cl2 p-b-30">최종 결제 금액</h4>
					<div class="flex-w flex-t bor12 p-b-13">
						<div class="size-210">
							<span class="stext-110 cl2" style="font-size: 12px;"> 총 상품금액: </span>
						</div>
						<div class="size-210">
							<span class="mtext-110 cl2">
								<span id="sumPrice"> &nbsp;47,000</span>
								원
							</span>
						</div>
						<div class="size-210">
							<span class="stext-110 cl2" style="font-size: 12px;"> 할인금액: </span>
						</div>
						<div class="size-210">
							<span class="mtext-110 cl2">
								-
								<span id="totalSale">15,600</span>
								원
							</span>
						</div>
						<div class="size-210">
							<span class="stext-110 cl2" style="font-size: 12px;"> 배송비: </span>
						</div>
						<div class="size-210">
							<span class="mtext-110 cl2">
								<span id="deliveryFee">&nbsp;&nbsp;&nbsp;2500</span>
								원
							</span>
						</div>
					</div>
					<div class="flex-w flex-t p-t-27 p-b-33">
						<div class="size-210">
							<span class="mtext-101 cl2">합계</span>
						</div>
						<div class="size-210 p-t-1">
							<span class="mtext-110 cl2">
								<span id="payment">33,900</span>
								원
							</span>
						</div>
					</div>
					<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" type="submit" onclick="return check()" href="order.jsp">선택 상품 주문</button>
					<div>&nbsp;</div>
					<button id="all" onclick="allselect()" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" type="submit" href="order.jsp">전체 상품 주문</button>
				</div>
			</div>
		</div>
	</div>
</form>
<%@include file="common/footer.jsp"%>
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
	$(".js-select2").each(function() {
		$(this).select2({
			minimumResultsForSearch : 20,
			dropdownParent : $(this).next('.dropDownSelect2')
		});
	})
</script>
<!--===============================================================================================-->
<script src="../vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
<script>
	
	function allselect() {

		// 체크박스의 이름과 prop 메서드를 사용하여 전체 선택
		$('[name=chk]').prop('checked', true);

	}

	function del() {
		var chkProduct = new Array();
		
		$("input[name='chk']:checked").each(function() {
			var items = $(this).val();
			chkProduct.push(items);
			
		});
		
		if(chkProduct.length<1) {
			alert("선택한 상품이 없습니다.");
			return;
		} else {
			if(confirm("정말 삭제하시겠습니까?")) {
				alert("삭제되었습니다.");
			} else {
				alert("취소되었습니다.");
			}
		}
	}

	function check() {
		if ($("#chk").is(":checked") == true) {
			return true;
		} else {
			alert("선택된 상품이 없습니다.");
			return false;
		}
	}
</script>
</body>
</html>