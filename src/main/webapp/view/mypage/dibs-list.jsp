<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>찜리스트</title>

<link rel="stylesheet" type="text/css" href="../../css/dibs-list.css">


<%@include file="../common/header.jsp" %>


	<!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/ModooShop/images/bg-img-01.png');">
      <h2 class="ltext-105 cl0 txt-center">찜 리스트</h2>
   </section>


	<!-- Content page -->
	<section class="bg0 p-t-62 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">


					<!-- Content page -->
					<section class="bg0 p-b-120">
						<div class="container">
							<div class="sub-content">
								<div class="content-box">
									<div class="join-agreement-wrap">


										<div class="mypage_shipping js_delivery_layer">
											<div class="mypage_zone_tit">
												<h3>찜리스트</h3>
											</div>
											<div class="mypage_shipping_cont">
												<div class="mypage_table_type">

													<table style="text-align: center;">

														<tbody>
															<tr class="table_head">
																<th class="column-0" style="text-align: center;">선택</th>
																<th class="column-1" style="text-align: center;">상품</th>
																<th class="column-2" style="text-align: center;">상품명</th>
																<th class="column-3" style="text-align: center;">수량</th>
																<th class="column-4" style="text-align: center;">상품금액</th>
																<th class="column-5" style="text-align: center;">합계</th>
															</tr>
															<tr class="table_row start">
																<td class="column-0" td align="center"><input type="checkbox"
																	id="check" name="check"></td>
																<td class="column-1"><img src="/ModooShop/images/p001.jpg" alt="샘플 데이터1" style="width: 90px; height: 70px;"></td>
																<td class="column-2" style="text-align: center;">
																루미큐브
																</td>
																<td class="column-3" style="text-align: center;">2 개</td>
																<td class="column-4" style="text-align: center;">52500원</td>
																<td class="column-5" style="text-align: center;">105000원</td>
															</tr>
														</tbody>
													</table>
												</div>
												<div
													class="flex-w flex-sb-m p-t-10 p-b-15  p-lr-250 p-lr-15-sm">
													<div class="flex-w flex-m m-tb-5">
														<div
															class="flex-c-m stext-101 cl2 size-118 bg8  hov-btn3 p-lr-15 trans-04 pointer"
															onclick="alert('삭제하시겠습니까?');">선택상품삭제</div>
													</div>
													<a href="shoping-cart.html">
														<div
															class="flex-c-m stext-101 cl2 size-119 bg8 hov-btn3 p-lr-15 trans-04 pointer m-tb-10"
															onclick="alert('장바구니에 추가하시겠습니까?');">선택목록장바구니</div>
													</a>
												</div>
											</div>


											<!-- //mypage_shipping_cont  -->
											<div class="pagination">
												<ul></ul>
											</div>
										</div>




									</div>
								</div>
							</div>
					</section>



				</div>

				<div class="col-md-4 col-lg-3 p-b-80">
					<div class="side-menu">


						<div class="sub_content">

							<div class="side_cont">
								<span class="btn_side_mobile"></span>
								<div class="sub_menu_box">
									<div class="sub_menu_box_tit">
										<h2>
											<i class="fa fa-bars m-r-10"></i>마이페이지
										</h2>

									</div>
									<ul class="sub_menu_mypage">
										<li>쇼핑정보
											<ul class="sub_depth1">
												<li><a href="order-list.jsp">- 주문목록/배송조회</a></li>
												<li><a href="cancel-list.jsp">- 취소 내역</a></li>
												<li><a href="dibs-list.jsp">- 찜리스트</a></li>
											</ul>
										</li>
										<li>회원정보
											<ul class="sub_depth1">
												<li><a href="change-inform.jsp">- 회원정보 변경</a></li>
												<li><a href="withdrawal.jsp">- 회원 탈퇴</a></li>
												<li><a href="manage-address.jsp">- 배송지 관리</a></li>
											</ul>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
	</section>



	<%@include file="../common/footer.jsp" %>
	
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