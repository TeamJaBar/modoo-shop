<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>주문서작성/결제</title>

	<link rel="stylesheet" type="text/css" href="../../css/order.css">

<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	$(document).ready(function () {
		$('.on').click(function () {
			$(this).toggleClass("on");
		});


		// 아이디 정규식
		const idCheck = /^[a-z][a-z0-9]+$/m

		$('#loginId').focusout(function () {
			let id = $('#loginId').val();
			// 영소문자로 시작되며 영소문자 혹은 숫자만 사용 가능

			// 자리수는 일부러 표현식에 안 적고 따로
			if (id.length < 4 || id.length > 20) {
				alert("아이디는 4~20자리 이내로 입력해주세요.");
				// input에 적은 거 없애기
				$('#loginId').val("");
				return false;
			}

			// 숫자로 시작하거나 영소문자와 숫자 외의 것 입력했을 시
			if (!idCheck.test(id)) {
				alert('아이디는 영어로 시작하며 영소문자 혹은 숫자만 사용할 수 있습니다.');
				$('#loginId').val("");
				return false;
			}
		});
	});
</script>

<%@include file="../common/header.jsp"%>

	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('../../images/bg-img-01.png');">
		<h2 class="ltext-105 cl0 txt-center">
			주문서 작성/결제
		</h2>
	</section>


	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="sub_content">
				<div class="content_box">
					<form id="frmOrder" name="frmOrder" action="order-ok.html">
						<div class="order_wrap">
							<div class="order_tit">
								<h2>주문서작성/결제</h2>
								<ol>
									<li><span>01</span> 장바구니 <span><img src="../../images/icons/icon_join_step_off.png"
												alt=""></span></li>
									<li class="page_on"><span>02</span> 주문서작성/결제<span><img
												src="../../images/icons/icon_join_step_on.png" alt=""></span></li>
									<li><span>03</span> 주문완료</li>
								</ol>
							</div>
							<!-- //order_tit -->

							<div class="order_cont">

								<div class="cart_cont_list">
									<div class="order_cart_tit">
										<h3>주문상세내역</h3>
									</div>
									<!-- //order_cart_tit -->

									<div class="order_table_type">
										<!-- 장바구니 상품리스트 시작 -->
										<table>
											<colgroup>
												<col> <!-- 상품명/옵션 -->
												<col style="width:5%"> <!-- 수량 -->
												<col style="width:10%"> <!-- 상품금액 -->
												<col style="width:13%"> <!-- 할인/적립 -->
												<col style="width:10%"> <!-- 합계금액 -->
												<col style="width:10%"> <!-- 배송비 -->
											</colgroup>
											<thead>
												<tr>
													<th>상품/옵션 정보</th>
													<th class="js-relative-none-mobile">수량</th>
													<th>상품금액</th>
													<th class="js-relative-none-mobile">할인/적립</th>
													<th class="js-relative-none-mobile">합계금액</th>
													<th class="js-relative-none-mobile">배송비</th>
												</tr>
											</thead>
											<tbody>


												<tr>
													<td class="td_left">
														<div class="pick_add_cont">
															<span class="pick_add_img">
																<img src="https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/20/07/29//1000007239/modify_list_053.jpg"
																	width="40" alt="방방곡곡 세계유랑" title="방방곡곡 세계유랑"
																	class="middle">
															</span>
															<div class="pick_add_info">
																<em><span>방방곡곡 세계유랑</span></em>

																<!-- //icon_pick_list -->

																<div class="pick_option_box">
																</div>

																<div class="pick_option_box">
																</div>
															</div>
														</div>
														<!-- //pick_add_cont -->
													</td>
													<td class="js-relative-none-mobile td_order_amount">
														<div class="order_goods_num">
															<strong>1개</strong>
														</div>
													</td>
													<td>
														<div class="js-relative-block-mobile">
															<strong>1개</strong>
														</div>
														<strong class="order_sum_txt price">16,320원</strong>
													</td>
													<td class="td_benefit js-relative-none-mobile">
														<ul class="benefit_list">
															<li class="benefit_mileage js_mileage">
																<em>적립</em><br>
																<span>상품 <strong>+160원</strong></span>
															</li>
														</ul>
													</td>
													<td class="js-relative-none-mobile">
														<strong class="order_sum_txt">16,320원</strong>
													</td>
													<td class="td_delivery js-relative-none-mobile" rowspan="2">
														기본_3만무배<br>
														2,500원
														<br>
														(택배)
													</td>
												</tr>
												<tr>
													<td class="td_left">
														<div class="pick_add_cont">
															<span class="pick_add_img">
																<img src="https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/01/05//1000006528/modify_list_017.jpg"
																	width="40" alt="모두의마블 베이직" title="모두의마블 베이직"
																	class="middle">
															</span>
															<div class="pick_add_info">


																<em><span>모두의마블 베이직</span></em>

																<div class="pick_option_box">
																</div>

																<div class="pick_option_box">
																</div>
															</div>
														</div>
														<!-- //pick_add_cont -->

													</td>
													<td class="js-relative-none-mobile td_order_amount">
														<div class="order_goods_num">
															<strong>1개</strong>
														</div>
													</td>
													<td>

														<div class="js-relative-block-mobile">
															<strong>1개</strong>
														</div>
														<strong class="order_sum_txt price">6,600원</strong>
													</td>
													<td class="td_benefit js-relative-none-mobile">
														<ul class="benefit_list">
															<li class="benefit_mileage js_mileage">
																<em>적립</em><br>
																<span>상품 <strong>+60원</strong></span>
															</li>
														</ul>
													</td>
													<td class="js-relative-none-mobile">
														<strong class="order_sum_txt">6,600원</strong>
													</td>
												</tr>


											</tbody>
										</table>
										<!-- 장바구니 상품리스트 끝 -->
									</div>

								</div>
								<!-- //cart_cont_list -->

								<div class="btn_left_box">
									<a href="shoping-cart.html" class="shop_go_link"><em>&lt; 장바구니 가기</em></a>
								</div>

								<div class="price_sum">
									<div class="price_sum_cont">
										<div class="price_sum_list">
											<dl>
												<dt>총 <strong>2</strong> 개의 상품금액 </dt>
												<dd><strong>22,920</strong>원</dd>
											</dl>
											<span><img src="images/order_price_plus.png" alt="더하기"></span>
											<dl>
												<dt>배송비</dt>
												<dd><strong>2,500</strong>원</dd>
											</dl>
											<span><img src="images/order_price_total.png" alt="합계"></span>
											<dl class="price_total">
												<dt>합계</dt>
												<dd><strong>25,420</strong>원
												</dd>
											</dl>
										</div>
										<em class="tobe_mileage js_mileage">적립예정 적립금 : <span>220</span> 원</em>
									</div>
									<!-- //price_sum_cont -->
								</div>
								<!-- //price_sum -->


								<div class="order_view_info">


									<div class="order_info">
										<div class="order_zone_tit">
											<h4>주문자 정보</h4>
										</div>

										<div class="order_table_type">
											<table class="table_left">
												<colgroup>
													<col style="width:15%;">
													<col style="width:85%;">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row"><span class="important">주문하시는 분</span></th>
														<td><input type="text" name="orderName" value="이성훈"
																data-pattern="gdEngKor" maxlength="20"></td>
													</tr>
													<tr>
														<th scope="row">주소</th>
														<td> [06236]
															서울 강남구 테헤란로 146 3층</td>
													</tr>
													<tr>
														<th scope="row">전화번호</th>
														<td>
															<input type="text" id="phoneNum" name="orderPhone" value=""
																maxlength="20">
															<div data-lastpass-icon-root="true"
																style="position: relative !important; height: 0px !important; width: 0px !important; float: left !important;">
															</div>
														</td>
													</tr>
													<tr>
														<th scope="row"><span class="important">휴대폰 번호</span></th>
														<td>
															<input type="text" id="mobileNum" name="orderCellPhone"
																value="010-2611-9577" maxlength="20">
														</td>
													</tr>
													<tr>
														<th scope="row"><span class="important">이메일</span></th>
														<td class="member_email">
															<input type="text" name="orderEmail"
																value="polodltjdgns@naver.com">
															<select id="emailDomain" class="chosen-select">
																<option value="self">직접입력</option>
																<option value="naver.com">naver.com</option>
																<option value="hanmail.net">hanmail.net</option>
																<option value="daum.net">daum.net</option>
																<option value="nate.com">nate.com</option>
																<option value="hotmail.com">hotmail.com</option>
																<option value="gmail.com">gmail.com</option>
																<option value="icloud.com">icloud.com</option>
															</select>
															<!-- <div class="chosen-container chosen-container-single chosen-container-single-nosearch"
																title="" id="emailDomain_chosen" style="width: 120px;">
																<a class="chosen-single">
																	<span>직접입력</span>
																	<div><b></b></div>
																</a>
																<div class="chosen-drop">
																	<div class="chosen-search">
																		<input class="chosen-search-input" type="text"
																			autocomplete="off" readonly="">
																	</div>
																	<ul class="chosen-results"></ul>
																</div>
															</div> -->
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<!-- //order_info -->

									<div class="delivery_info">
										<div class="order_zone_tit">
											<h4>배송정보</h4>
										</div>

										<div class="order_table_type shipping_info">
											<table class="table_left shipping_info_table">
												<colgroup>
													<col style="width:15%;">
													<col style="width:85%;">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">배송지 확인</th>
														<td>
															<div class="form_element">
																<ul>
																	<li>
																		<input type="radio" name="shipping"
																			id="shippingBasic">
																		<label for="shippingBasic" class="choice_s">기본
																			배송지</label>
																	</li>
																	<li>
																		<input type="radio" name="shipping"
																			id="shippingRecently">
																		<label for="shippingRecently"
																			class="choice_s">최근 배송지</label>
																	</li>
																	<li>
																		<input type="radio" name="shipping"
																			id="shippingNew">
																		<label for="shippingNew" class="choice_s on">직접
																			입력</label>
																	</li>
																	<li>
																		<input type="radio" name="shipping"
																			id="shippingSameCheck" checked>
																		<label for="shippingSameCheck"
																			class="choice_s">주문자정보와 동일</label>
																	</li>
																</ul>
																<button class="btn_gray_list"><a href="add-address.html"
																		class="btn_gray_small btn_open_layer js_shipping"
																		style="border: 1px 7ab4de; color:#7ab4de">배송지
																		관리</a></button>
															</div>
														</td>
													</tr>
													<tr>
														<th scope="row"><span class="important">받으실분</span></th>
														<td><input type="text" name="receiverName"
																data-pattern="gdEngKor" maxlength="20" required></td>
													</tr>
													<tr>
														<th scope="row"><span class="important">받으실 곳</span></th>
														<td class="member_address">
															<div class="address_postcode">
																<input type="text" id="sample3_postcode"
																	name="receiverZonecode" readonly="readonly"
																	required>
																<input type="hidden" name="receiverZipcode" required>
																<span id="receiverZipcodeText"
																	class="old_post_code"></span>
																<button type="button" class="btn_post_search"
																	onclick="sample3_execDaumPostcode()" style="color:#7ab4de; padding-left: 20px;">우편번호검색</button>
																<!-- <button type="button" class="btn_post_search"
																	onclick="gd_postcode_search('receiverZonecode', 'receiverAddress', 'receiverZipcode');">우편번호검색</button> -->
															</div>
															<div class="address_input">
																<input type="text" id="sample3_address"
																	name="receiverAddress" readonly="readonly">
																<input type="text" id="sample3_detailAddress"
																	name="receiverAddressSub">
															</div>
															<div id="wrapPost"
																style="display: none; border: 1px solid; max-width: 500px; height: 300px; margin: 5px 0; position: relative">
																<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
																	id="btnFoldWrap"
																	style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
																	onclick="foldDaumPostcode()" alt="접기 버튼">
															</div>

															<script
																src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
															<script>
																// 우편번호 찾기 찾기 화면을 넣을 element
																var element_wrap = document
																	.getElementById('wrapPost');

																function foldDaumPostcode() {
																	// iframe을 넣은 element를 안보이게 한다.
																	element_wrap.style.display = 'none';
																}

																function sample3_execDaumPostcode() {
																	// 현재 scroll 위치를 저장해놓는다.
																	var currentScroll = Math
																		.max(
																			document.body.scrollTop,
																			document.documentElement.scrollTop);
																	new daum.Postcode(
																		{
																			oncomplete: function (data) {
																				// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

																				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
																				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
																				var addr = ''; // 주소 변수
																				var extraAddr = ''; // 참고항목 변수

																				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
																				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
																					addr = data.roadAddress;
																				} else { // 사용자가 지번 주소를 선택했을 경우(J)
																					addr = data.jibunAddress;
																				}

																				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
																				if (data.userSelectedType === 'R') {
																					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
																					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
																					if (data.bname !== ''
																						&& /[동|로|가]$/g
																							.test(data.bname)) {
																						extraAddr += data.bname;
																					}
																					// 건물명이 있고, 공동주택일 경우 추가한다.
																					if (data.buildingName !== ''
																						&& data.apartment === 'Y') {
																						extraAddr += (extraAddr !== '' ? ', '
																							+ data.buildingName
																							: data.buildingName);
																					}
																					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
																					if (extraAddr !== '') {
																						extraAddr = ' ('
																							+ extraAddr
																							+ ')';
																					}
																					// 조합된 참고항목을 해당 필드에 넣는다.
																					document
																						.getElementById("sample3_extraAddress").value = extraAddr;

																				} else {
																					document
																						.getElementById("sample3_extraAddress").value = '';
																				}

																				// 우편번호와 주소 정보를 해당 필드에 넣는다.
																				document
																					.getElementById('sample3_postcode').value = data.zonecode;
																				document
																					.getElementById("sample3_address").value = addr;
																				// 커서를 상세주소 필드로 이동한다.
																				document
																					.getElementById(
																						"sample3_detailAddress")
																					.focus();

																				// iframe을 넣은 element를 안보이게 한다.
																				// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
																				element_wrap.style.display = 'none';

																				// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
																				document.body.scrollTop = currentScroll;
																			},
																			// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
																			onresize: function (size) {
																				element_wrap.style.height = size.height
																					+ 'px';
																			},
																			width: '100%',
																			height: '100%'
																		}).embed(element_wrap);

																	// iframe을 넣은 element를 보이게 한다.
																	element_wrap.style.display = 'block';
																}
															</script>
														</td>
													</tr>
													<tr>
														<th scope="row">전화번호</th>
														<td>
															<input type="text" id="receiverPhone" name="receiverPhone">
														</td>
													</tr>
													<tr>
														<th scope="row"><span class="important">휴대폰 번호</span></th>
														<td>
															<input type="text" id="receiverCellPhone"
																name="receiverCellPhone">
														</td>
													</tr>
													<tr>
														<th scope="row">남기실 말씀</th>
														<td class="td_last_say"><input type="text" name="orderMemo">
														</td>
													</tr>
													<tr id="memberinfoApplyTr">
														<th scope="row">회원정보 반영</th>
														<td>
															<div class="form_element">
																<div id="memberinfoApplyTr1"
																	class="member_info_delivery">
																	<input type="checkbox" id="reflectApplyDelivery"
																		name="reflectApplyDelivery" value="y">
																	<label for="reflectApplyDelivery" class="check_s">나의
																		배송지에 추가합니다.</label>
																</div>
																<div id="memberinfoApplyTr2" class="member_info_apply">
																	<input type="checkbox" id="reflectApplyMember"
																		name="reflectApplyMember" value="y">
																	<label for="reflectApplyMember" class="check_s">위
																		내용을 회원정보에 반영합니다.
																		<span>(주소/전화번호/휴대폰번호)</span></label>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<!-- //delivery_info -->

									<!-- //addition_info -->

									<div class="payment_info">
										<div class="order_zone_tit">
											<h4>결제정보</h4>
										</div>

										<div class="order_table_type">
											<table class="table_left">
												<colgroup>
													<col style="width:15%;">
													<col style="width:85%;">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">상품 합계 금액</th>
														<td>
															<strong id="totalGoodsPrice"
																class="order_payment_sum">22,920원</strong>
														</td>
													</tr>
													<tr>
														<th scope="row">배송비</th>
														<td>
															<span id="totalDeliveryCharge">2,500</span>원
															<span class="multi_shipping_text"></span>
														</td>
													</tr>
													<!-- <tr id="rowDeliverAreaCharge" class="dn">
														<th scope="row">지역별 배송비</th>
														<td>
															<span id="deliveryAreaCharge">0</span>원
															<input type="hidden" name="totalDeliveryCharge"
																value="2500">
															<input type="hidden" name="deliveryAreaCharge" value="0">
														</td>
													</tr> -->
													<tr>
														<th scope="row">할인 및 적립</th>
														<td>
															<ul class="order_benefit_list">
																<li class="order_benefit_sale">
																	<em id="saleDefault">
																		할인 : <strong>(-) <b
																				class="total-member-dc-price">0</b>원</strong>
																		<span>(
																			상품 0원
																			, 회원 <span class="member-dc-price">0원</span>
																	</em>
																</li>
																<li class="order_benefit_mileage js_mileage">
																	<em id="mileageDefault">
																		적립 적립금 : <strong>(+) <b
																				class="total-member-mileage">220</b>원</strong>
																		<span>
																			(
																			상품 <span class="goods-mileage">220</span>원,
																			회원 <span class="member-mileage">0</span>원
																			)
																		</span>
																	</em>
																</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row">적립금 사용</th>
														<td>
															<div class="order_money_use">
																<b><input type="text" name="useMileage"
																		onblur="gd_mileage_use_check('y', 'y', 'y');">
																	원</b>
																<div class="form_element">
																	<input type="checkbox" id="useMileageAll"
																		onclick="gd_mileage_use_all();">
																	<label for="useMileageAll" class="check_s">전액
																		사용하기</label>
																	<span class="money_use_sum">(보유 적립금 : 1,000
																		원)</span>
																</div>
																<em class="money_use_txt js-mileageInfoArea">※ 1,000원까지
																	사용 가능합니다.</em>
															</div>
														</td>
													</tr>
													<tr>
														<th scope="row">예치금 사용</th>
														<td>
															<div class="order_money_use">
																<b><input type="text" name="useDeposit"
																		onblur="gd_deposit_use_check();"> 원</b>
																<div class="form_element">
																	<input type="checkbox" id="useDepositAll"
																		onclick="deposit_use_all();">
																	<label for="useDepositAll" class="check_s">전액
																		사용하기</label>
																	<span class="money_use_sum">(보유 예치금 : 0 원)</span>
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<th scope="row">최종 결제 금액</th>
														<td>
															<input type="hidden" name="settlePrice" value="25420">
															<input type="hidden" name="overseasSettlePrice" value="0">
															<input type="hidden" name="overseasSettleCurrency"
																value="KRW">
															<strong id="totalSettlePrice"
																class="order_payment_sum">25,420</strong>원
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<!-- //payment_info -->

									<div class="payment_progress">
										<div class="order_zone_tit">
											<h4>결제수단 선택 / 결제</h4>
											<p class="js_pay_content">※ 고객님은 안전거래를 위해 현금으로 결제시 저희 쇼핑몰에서 가입한 구매안전서비스인 KG
												이니시스의 구매안전(에스크로)서비스를 이용하실 수 있습니다.</p>
										</div>

										<div class="payment_progress_list">
											<div class="js_pay_content">
												<!-- N : 일반결제 시작 -->
												<div id="settlekind_general" class="general_payment">
													<dl>
														<dt>일반결제</dt>
														<dd>
															<div class="form_element">
																<ul class="payment_progress_select">
																	<li id="settlekindType_pk">
																		<input type="radio" id="settleKind_pk"
																			name="settleKind" value="pk" checked>
																		<label for="settleKind_pk"
																			class="choice_s">카카오페이</label>
																	</li>
																	<li id="settlekindType_pc">
																		<input type="radio" id="settleKind_pc"
																			name="settleKind" value="pc">
																		<label for="settleKind_pc"
																			class="choice_s">신용카드</label>
																	</li>
																	<!-- <li id="settlekindType_pb">
																		<input type="radio" id="settleKind_pb"
																			name="settleKind" value="pb">
																		<label for="settleKind_pb"
																			class="choice_s">계좌이체</label>
																	</li>
																	<li id="settlekindType_pv">
																		<input type="radio" id="settleKind_pv"
																			name="settleKind" value="pv">
																		<label for="settleKind_pv"
																			class="choice_s">가상계좌</label>
																	</li>
																	<li id="settlekindType_gb">
																		<input type="radio" id="settleKind_gb"
																			name="settleKind" value="gb">
																		<label for="settleKind_gb" class="choice_s">무통장
																			입금</label>
																	</li>
																	<li id="settlekindType_ph">
																		<input type="radio" id="settleKind_ph"
																			name="settleKind" value="ph">
																		<label for="settleKind_ph"
																			class="choice_s">휴대폰결제</label>
																	</li> -->
																</ul>
															</div>
														</dd>
													</dl>
												</div>
												<!-- //general_payment -->
												<!-- N : 일반결제 끝 -->
											</div>
										</div>
										<!-- //payment_progress_list -->
										<div class="payment_final">
											<div class="payment_final_total">
												<dl>
													<dt>최종 결제 금액</dt>
													<dd><span><strong id="totalSettlePriceView">25,420</strong>원</span>
													</dd>
												</dl>
											</div>
											<div class="payment_final_check">
												<div class="form_element">
													<input type="checkbox" id="termAgree_orderCheck" class="require"
														required>
													<label for="termAgree_orderCheck" class="check_s"><b>(필수)</b>
														구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.</label>
												</div>
											</div>
											<div class="btn_center_box">
												<button class="btn_order_buy order-buy">결제하기</button>
											</div>
										</div>
										<!-- //payment_final -->

									</div>
									<!-- //payment_progress -->

								</div>
								<!-- //order_view_info -->
							</div>
							<!-- //order_cont -->
						</div>
						<!-- //order_wrap -->
					</form>
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