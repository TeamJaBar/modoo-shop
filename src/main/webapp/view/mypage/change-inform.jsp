<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>회원정보변경</title>
<link rel="stylesheet" type="text/css"
	href="/ModooShop/css/change-inform.css">
<link rel="stylesheet" type="text/css" href="/ModooShop/css/join.css">

<%@include file="/view/common/header.jsp"%>

<!-- Content page -->
<section class="bg0 p-t-28 p-b-60">
	<div class="container">
		<div class="sub_content row">
			<div class="content_box col-md-8 col-lg-9 p-b-80">
				<div class="join_base_wrap">
					<div class="member_cont">
						<form action="join-ok.html" id="formJoin" name="formJoin">
							<!-- 회원가입/정보 기본정보 -->
							<div class="base_info_box">
								<h3>기본정보</h3>
								<span class="important">표시는 반드시 입력하셔야 하는 항목입니다.</span>
								<div class="base_info_sec">
									<table border="0" cellpadding="0" cellspacing="0">
										<colgroup>
											<col width="25%">
											<col width="75%">
										</colgroup>
										<tbody>
											<tr>
												<th><span class="important">아이디</span></th>
												<td>
													<div class="member_warning">
														<input type="text" id="memId" name="memId"
															data-pattern="gdMemberId" value="timo" required disabled>
													</div>
													<div id="memId-length-error" class="text_warning hidden">아이디는
														4~20자리 이내로 입력해주세요.</div>
													<div id="memId-error" class="text_warning hidden">아이디는
														영어로 시작하며 영소문자 혹은 숫자만 사용할 수 있습니다.</div>
													<div id="memId-existing-error" class="text_warning hidden">이미
														사용 중인 아이디입니다.</div>
													<div id="memId-good" class="text_affirm hidden">사용
														가능합니다.</div>
												</td>

											</tr>
											<tr class="">
												<th><span class="important">비밀번호</span></th>
												<td class="member_password">
													<div class="member_warning">
														<input type="password" id="newPassword" name="memPw"
															autocomplete="off" placeholder="" required>
													</div>
													<div id="memPw-error" class="text_warning hidden">비밀번호는
														영문, 숫자, 특수문자 중 2가지 이상이 조합된 10~20자여야 합니다.</div>
													<div id="memPw-good" class="text_affirm hidden">사용
														가능합니다.</div>
												</td>
											</tr>
											<tr class="">
												<th><span class="important">비밀번호 확인</span></th>
												<td>
													<div class="member_warning">
														<input type="password" id="chkPassword" class="check-id"
															name="memPwRe" autocomplete="off" required>
													</div>
													<div id="memPwRe-error" class="text_warning hidden">비밀번호가
														서로 다릅니다.</div>
													<div id="memPwRe-good" class="text_affirm hidden">비밀번호가
														일치합니다.</div>
												</td>
											</tr>
											<tr>
												<th><span class="important">이름</span></th>
												<td>
													<div class="member_warning">
														<input type="text" name="memNm" data-pattern="gdEngKor"
															value="김티모" maxlength="30" required disabled>
													</div>
													<div id="memNm-error" class="text_warning hidden">이름은
														한글만 사용할 수 있으며 2글자 이상이어야 합니다.</div>
												</td>
											</tr>
											<tr>
												<th><span class="important">이메일</span></th>
												<td class="member_email">
													<div class="member_warning">
														<input type="text" name="email" id="email" value=""
															tabindex="-1" required> <select id="emailDomain"
															name="emailDomain" class="chosen_select"required">
															<option value="self" selected>직접입력</option>
															<option value="naver.com">naver.com</option>
															<option value="hanmail.net">hanmail.net</option>
															<option value="daum.net">daum.net</option>
															<option value="nate.com">nate.com</option>
															<option value="hotmail.com">hotmail.com</option>
															<option value="gmail.com">gmail.com</option>
															<option value="icloud.com">icloud.com</option>
														</select>
													</div>
													<div id="memEm-error" class="text_warning hidden">이메일을
														다시 한 번 확인해주세요.</div>
													<div id="memEm-good" class="text_affirm hidden">사용
														가능합니다.</div> <!-- <div class="form_element">
														<input type="checkbox" id="maillingFl" name="maillingFl"
															value="y"> <label for="maillingFl"
															class="check_s">정보/이벤트 메일 수신에 동의합니다.</label>
													</div> -->
												</td>
											</tr>
											<tr>
												<th><span class="important">휴대폰번호</span></th>
												<td class="member_address">
													<div class="address_postcode">
														<input type="text" id="cellPhone" name="cellPhone"
															maxlength="12" placeholder="- 없이 입력하세요."
															data-pattern="gdNum" value="" required>
														<div data-lastpass-icon-root="true"
															style="position: relative !important; height: 0px !important; width: 0px !important; float: left !important;">
														</div>
													</div>
													<div id="memPn-hyphen-error" class="text_warning hidden">-없이
														입력해주세요.</div>
													<div id="memPn-error" class="text_warning hidden">핸드폰
														번호를 확인해주세요.</div> <!-- <div class="form_element">
														<input type="checkbox" id="smsFl" name="smsFl" value="y">
														<label for="smsFl" class="check_s">정보/이벤트 SMS 수신에
															동의합니다.</label>
													</div> -->
												</td>
											</tr>
											<!-- 
												<tr>
													<th><span>전화번호</span></th>
													<td>
														<div class="member_warning">
															<input type="text" id="phone" name="phone" maxlength="12"
																placeholder="- 없이 입력하세요." data-pattern="gdNum" value="">
														</div>
													</td>
												</tr>
												-->
											<tr>
												<th><span class="important">주소</span></th>
												<td class="member_address">
													<div class="address_postcode find_address">
														<input type="text" name="zonecode" id="sample3_postcode"
															placeholder="우편번호" value="" required> <input
															type="button" id="find_address"
															onclick="sample3_execDaumPostcode()" value="우편번호 찾기"
															required>
													</div>
													<div id="wrapPost"
														style="display: none; border: 1px solid; max-width: 500px; height: 300px; margin: 5px 0; position: relative">
														<img
															src="//t1.daumcdn.net/postcode/resource/images/close.png"
															id="btnFoldWrap"
															style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
															onclick="foldDaumPostcode()" alt="접기 버튼">
													</div>
													<div class="address_input detailed_address">
														<div class="member_warning">
															<input type="text" name="address" id="sample3_address"
																placeholder="주소" value="" required>
														</div>
														<div class="member_warning js_address_sub">
															<input type="text" name="addressSub"
																id="sample3_detailAddress" placeholder="상세주소" value=""
																required> <input type="text"
																id="sample3_extraAddress" placeholder="참고항목">
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- //base_info_box -->
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
							<!-- //base_info_sec -->
							<div class="btn_center_box">
								<button type="button" id="btnCancel" class="btn_member_cancel"
									onclick="location.href='main.html'">취소</button>
								<button type="submit" class="btn_comfirm js_btn_join">정보변경</button>
							</div>
						</form>
						<!-- //btn_center_box -->
					</div>
					<!-- //member_cont -->
				</div>

				<!-- 윤석환님 코드 -->
				<!-- 
				<div class="member-content">
					<form action="" id="formJoin" name="formJoin" method="post">
						<div class="base-info-box">
							<h3 class="mtext-105 m-b-10">기본정보</h3>
							<span class="important">※ 표시는 반드시 입력하셔야 하는 항목입니다.</span>
							<div class="base-info-section m-t-20">
								<table>
									<colgroup>
										<col width="25%">
										<col width="75%">
									</colgroup>
									<tbody>
										<tr>
											<th><span class="important">※ 아이디</span></th>
											<td><input type="hidden" name="memId" value="klkl741">
												timo</td>
										</tr>
										<tr>
											<th><span class="important">※ 비밀번호</span></th>
											<td class="member-password">
												<div class="member-warning">
													<input type="password" id="npw" name="mem"
														autocomplete="off">
												</div>
											</td>
										</tr>
										<tr>
											<th><span class="important">※ 비밀번호 확인</span></th>
											<td class="member-password">
												<div class="member-warning">
													<input type="password" class="check-id" name="memRe"
														autocomplete="off">
												</div>
											</td>
										</tr>
										<tr>
											<th><span class="important">※ 이름</span></th>
											<td>
												<div class="member-warning">
													<input type="text" name="memNm" data-pattern="gdEngKor"
														value="" maxlength="30">
												</div>
											</td>
										</tr>
										<tr>
											<th><span class="important">※ 이메일</span></th>
											<td class="member_email">
												<div class="member_warning">
													<input type="text" class="m-b-10" name="email" id="email"
														value="" tabindex="-1" required> <select
														id="emailDomain" name="emailDomain" class="chosen_select"
														required>
														<option value="self">직접입력</option>
														<option value="naver.com">naver.com</option>
														<option value="hanmail.net">hanmail.net</option>
														<option value="daum.net">daum.net</option>
														<option value="nate.com">nate.com</option>
														<option value="hotmail.com">hotmail.com</option>
														<option value="gmail.com">gmail.com</option>
														<option value="icloud.com">icloud.com</option>
													</select>

												</div>
												<div class="member-warning js-email"></div>
												<div class="form-element">
													<input type="checkbox" id="maillingFl" name="maillingFl"
														value="y">
												</div>
											</td>
										</tr>
										<tr>
											<th><span class="important">※ 휴대폰번호</span></th>
											<td class="member-address">
												<div class="address-postcode">
													<input type="text" id="cellPhone" name="cellPhone"
														maxlength="12" placeholder="- 없이 입력하세요."
														data-pattern="gdNum" value="">
													<div data-lastpass-icon-root="true"
														style="position: relative !important; height: 0px !important; width: 0px !important; float: left !important;">
													</div>
												</div>
												<div class="form-element">
													<input type="checkbox" id="smsFl" name="smsFl" value="y">
												</div>
											</td>
										</tr>
										<tr>
											<th><span>전화번호</span></th>
											<td>
												<div class="member-warning">
													<input type="text" id="phone" name="phone" maxlength="12"
														placeholder="- 없이 입력하세요." data-pattern="gdNum" value="">
												</div>
											</td>
										</tr>
										<tr>
											<th><span class="important">※ 주소</span></th>
											<td class="member-address">
												<div class="address-postcode">
													<input type="text" name="zonecode" id="sample3-postcode"
														placeholder="우편번호" value=""> <input type="button"
														class="m-t-10" onclick="sample3_execDaumPostcode()"
														value="우편번호 찾기"><br>
												</div> //base_info_box
												<div id="wrapPost"
													style="display: none; border: 1px solid; max-width: 500px; height: 300px; margin: 5px 0; position: relative">
													<img
														src="//t1.daumcdn.net/postcode/resource/images/close.png"
														id="btnFoldWrap"
														style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
														onclick="foldDaumPostcode()" alt="접기 버튼">
												</div>

												<div class="address-input">
													<div class="member-warning">
														<input type="text" name="address" id="sample3-address"
															placeholder="주소" value=""><br>
													</div>
													<div class="member-warning js-address-sub">
														<input type="text" name="addressSub"
															id="sample3-detailAddress" placeholder="상세주소" value="">
														<input type="text" id="sample3-extraAddress"
															class="m-t-10" placeholder="참고항목">
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
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
						<div class="btn-center-box">
							<button type="button" id="btnPrevStep" class="btn-member-prev"
								href="admin-member.html" onclick="return con();">취소</button>
							<button type="button" id="btnNextStep" class="btn-member-next"
								href="admin-member.html" onclick="return ch();">정보변경</button>
						</div>
					</form>
				</div>
				 -->
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
											<li><a href="order-list.html">- 주문목록/배송조회</a></li>
											<li><a href="cancel-list.html">- 취소 내역</a></li>
											<li><a href="dibs-list.html">- 찜리스트</a></li>
										</ul>
									</li>
									<li>회원정보
										<ul class="sub_depth1">
											<li><a href="change-inform.html">- 회원정보 변경</a></li>
											<li><a href="withdrawal.html">- 회원 탈퇴</a></li>
											<li><a href="manage-address.html">- 배송지 관리</a></li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="/view/common/footer.jsp"%>

<!--===============================================================================================-->
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<!--===============================================================================================-->
<script>
	$(document).ready(function () {
		/* 체크박스 토글 */
		$('.check_s').click(function () {
			$(this).toggleClass("on");
		});

		/* 아이디 정규식 */
		// 영소문자로 시작되며 영소문자 혹은 숫자만 사용 가능
		const idCheck = /^[a-z][a-z0-9]+$/m

		$('#memId').focusout(function () {
			let id = $('#memId').val();
			
			$('#memId-good').addClass('hidden');

			// 자리수는 일부러 표현식에 안 적고 따로
			if (id.length < 4 || id.length > 20) {
				$('#memId-length-error').removeClass('hidden');
				return false;
			} else {
				$('#memId-length-error').addClass('hidden');
			}

			// 숫자로 시작하거나 영소문자와 숫자 외의 것 입력했을 시
			if (!idCheck.test(id)) {
				$('#memId-error').removeClass('hidden');
				return false;
			} else {
				$('#memId-error').addClass('hidden');
				$('#memId-good').removeClass('hidden'); // 아이디 사용 가능!
			}
		});

		/* 비밀번호 정규식 */
		// 영문(대/소문자), 숫자, 특수문자 하나씩은 포함한 10~20자

		// 특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호 정규식 ( 3 가지 조합)
		// const pwCheck = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{10,20}$/m

		// 영문, 숫자, 특수문자 중 2가지 이상 조합하여 10자리 이내의 암호 정규식 ( 2 가지 조합)
		const pwCheck = /^(?!((?:[A-Za-z]+)|(?:[~!@#$%^&*()_+=]+)|(?:[0-9]+))$)[A-Za-z\d~!@#$%^&*()_+=]{10,20}$/m

		$('#newPassword').focusout(function () {
			let nPw = $('#newPassword').val();
			let cPw = $('#chkPassword').val();
			
			$('#memPw-error').addClass('hidden'); // 틀림 숨김
			$('#memPw-good').addClass('hidden'); // 통과 숨김
			$('#memPwRe-good').addClass('hidden'); // 같음 숨김
			$('#memPwRe-error').addClass('hidden'); // 다름 숨김

			if (!pwCheck.test(nPw)) { // 정규식 통과 X
				$('#memPw-error').removeClass('hidden'); // 틀림 표시
				if (cPw.length !== 0) { // 비밀번호 확인 길이가 0이 아닐 때 == 입력이 되어 있을 때
					$('#memPwRe-error').removeClass('hidden'); // 다름 표시
					$('#chkPassword').val(""); // 비밀번호 확인 내용 삭제
				}
			} else { // 정규식 통과 O
				$('#memPw-good').removeClass('hidden'); // 통과 표시
				if (cPw.length !== 0 && cPw !== nPw) { // 비밀번호 다를 때
					$('#memPwRe-error').removeClass('hidden'); // 다름 표시
					$('#chkPassword').val(""); // 비밀번호 확인 내용 삭제
				} else if (cPw.length !== 0 && cPw === nPw) { // 비밀번호 같을 때
					$('#memPwRe-good').removeClass('hidden'); // 같음 표시
				}
			}
			
		});

		// 비밀번호 확인
		$('#chkPassword').focusout(function () {
			let nPw = $('#newPassword').val();
			let cPw = $('#chkPassword').val();

			if (pwCheck.test(nPw)) {
				if (cPw !== nPw) {
					$('#memPwRe-error').removeClass('hidden');
					$('#memPwRe-good').addClass('hidden');
					$('#chkPassword').val("");
					return false;
				} else {
					$('#memPwRe-good').removeClass('hidden');
					$('#memPwRe-error').addClass('hidden');
				}
			} else {
				$('#chkPassword').val("");
				$('#newPassword').focus();
			}
			
		});

		/* 이름 정규식 */
		// 한글로만 이루어진 2자 이상
		const nameCheck = /^[ㄱ-힇]{2,}$/m

		$('#memNm').focusout(function () {
			let name = $('#memNm').val();

			// 숫자로 시작하거나 영소문자와 숫자 외의 것 입력했을 시
			if (!nameCheck.test(name)) {
				$('#memNm-error').removeClass('hidden');
				$('#memNm').val("");
				return false;
			} else {
				$('#memId-error').addClass('hidden');
			}
		});

		/* 이메일 정규식 */
		const emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/m

		$('#email').focusout(function () {
			let emailFront = $('#email').val();
			let domain = $('#emailDomain option:selected').val();

			$('#memEm-good').addClass('hidden');
			// self = 직접입력
			if (domain === 'self') {
				if (!emailCheck.test(emailFront)) {
					$('#memEm-error').removeClass('hidden');
					return false;
				}
				$('#memEm-error').addClass('hidden');
			} else {
				let email = emailFront + '@' + domain;
				if (!emailCheck.test(email)) {
					$('#memEm-error').removeClass('hidden');
					return false;
				}
				$('#memEm-error').addClass('hidden');
			}
			$('#memEm-good').removeClass('hidden'); // 이메일 사용 가능!
		});

		$('#emailDomain').focusout(function () {
			let emailFront = $('#email').val();
			let domain = $('#emailDomain option:selected').val();

			$('#memEm-good').addClass('hidden');

			if (domain === 'self') {
				if (!emailCheck.test(emailFront)) {
					$('#memEm-error').removeClass('hidden');
					return false;
				}
				$('#memEm-error').addClass('hidden');
			} else {
				let email = emailFront + '@' + domain;
				if (!emailCheck.test(email)) {
					$('#memEm-error').removeClass('hidden');
					return false;
				}
				$('#memEm-error').addClass('hidden');
			}
			$('#memEm-good').removeClass('hidden'); // 이메일 사용 가능!
		});

		/* 휴대폰 정규식 */
		// 01X
		const phoneCheckFst = /^01(?:0|1|[6-9])$/m
		// 십진수 3 혹은 4자
		const phoneCheckSnd = /^(?:\d{3}|\d{4})$/m
		// 십진수 4자
		const phoneCheckTrd = /^\d{4}$/m

		$('#cellPhone').focusout(function () {
			let phone = $('#cellPhone').val();
			// 앞(01X) 중간(3 or 4) 뒤(4)
			let fst, snd, trd;
			// '-' 놉!
			if (/\-/m.test(phone)) {
				$('#memPn-hyphen-error').removeClass('hidden');
				return false;
			} else if (phone.length == 11) { // 11자면
				$('#memPn-hyphen-error').addClass('hidden');
				fst = phone.slice(0, 3);
				snd = phone.slice(3, 7); // snd 4자리
				trd = phone.slice(7, 11);
			} else if (phone.length == 10) { // 10자면
				$('#memPn-hyphen-error').addClass('hidden');
				fst = phone.slice(0, 3);
				snd = phone.slice(3, 6); // snd 3자리
				trd = phone.slice(6, 10);
			}

			if (!phoneCheckFst.test(fst) || !phoneCheckSnd.test(snd) || !phoneCheckTrd.test(trd)) {
				$('#memPn-error').removeClass('hidden');
				return false;
			} else {
				$('#memPn-error').addClass('hidden');
			}
		});

		/* 전화번호 정규식 */
		// 십진수 1~12자
		/* const telCheck = /^\d{1,12}$/m

		$('#phone').focusout(function () {
			let tel = $('#phone').val();
			// '-' 놉!
			if (/\-/m.test(tel)) {
				alert('-없이 입력해주세요.');
				return false;
			}

			if (!telCheck.test(tel)) {
				alert('전화번호를 확인해주세요');
				return false;
			}
		}); */

	});
</script>
<!--===============================================================================================-->
<script src="/ModooShop/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="/ModooShop/vendor/bootstrap/js/popper.js"></script>
<script src="/ModooShop/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="/ModooShop/vendor/select2/select2.min.js"></script>
<script>
      $(".js-select2").each(function(){
         $(this).select2({
            minimumResultsForSearch: 20,
            dropdownParent: $(this).next('.dropDownSelect2')
         });
      })
   </script>
<!--===============================================================================================-->
<script
	src="/ModooShop/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
<script
	src="/ModooShop/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
      $('.js-pscroll').each(function(){
         $(this).css('position','relative');
         $(this).css('overflow','hidden');
         var ps = new PerfectScrollbar(this, {
            wheelSpeed: 1,
            scrollingThreshold: 1000,
            wheelPropagation: false,
         });

         $(window).on('resize', function(){
            ps.update();
         })
      });
   </script>
<!--===============================================================================================-->
<script src="/ModooShop/js/main.js"></script>
</body>

<!-- 
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
        function ch(){
               let id = $("#memId").val();
               let pw = $("#npw").val();
               let name = $("#memNm").val();
               let email = $("#email").val();
               let phone = $("#cellPhone").val();
               let add = $("#Add").val();
               let point = $("#Point").val();

        let number = pw.search(/[0-9]/g);
        let english = pw.search(/[a-z]/ig);
        let spece = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
        let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

        if(id!=""){
        if (pw.length < 8 || pw.length > 20) {
            alert("8자리 ~ 20자리 이내로 입력해주세요.");
            return false;

        } else if (pw.search(/\s/) != -1) {
            alert("비밀번호는 공백 없이 입력해주세요.");
            return false;

        } else if (number < 0 || english < 0 || spece < 0) {
            alert("영문,숫자,특수문자를 혼합하여 입력해주세요.");
            return false;

        } else if ((number < 0 && english < 0) || (english < 0 && spece < 0) || (spece < 0 && number < 0)) {
            alert("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
            return false;

        } else if (/(\w)\1\1\1/.test()) {
            alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
            return false;

        } else if (pw.search(id) > -1) {
            alert("비밀번호에 아이디가 포함되었습니다.");
            return false;
        } else {
            if(name==""||email==""||phone==""||add==""||point==""){
                alert("빈 칸 없이 모두입력해주세요.");
                return false
            } else{
                alert("변경이 완료되었습니다!");
                return true;    
            }
            
        }

        if (false === reg.test()) {
            alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
            return false;
        } else {
            if(name==""||email==""||phone==""||add==""||point==""){
                alert("빈 칸 없이 모두입력해주세요.");
                return false
            } else{
                alert("변경이 완료되었습니다!");
                return true;    
            }
        }
    } else {
        alert("빈 칸 없이 모두입력해주세요.");
        return false
    }
}

    function con(){
        var result = confirm("정말 취소하시겠습니까?");

        if(result){
            alert("취소합니다!")
            return true;
        } else {
            return false;
        }
    }
    /* 이메일 정규식 */
   const emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/m

   $('#email').focusout(function () {
      let emailFront = $('#email').val();
      let domain = $('#emailDomain option:selected').val();

      console.log(domain);
      // self = 직접입력
      if (domain === 'self') {
         if (!emailCheck.test(emailFront)) {
            alert('이메일을 다시 한 번 확인해주세요.');
            return false;
         }
         return false;
      } else {
         let email = emailFront + '@' + domain;
         if (!emailCheck.test(email)) {
            return false;
         }
      }
   });
   /* 아이디 정규식 */
   // 영소문자로 시작되며 영소문자 혹은 숫자만 사용 가능
   const idCheck = /^[a-z][a-z0-9]+$/m

   $('#memId').focusout(function () {
      let id = $('#memId').val();

      // 자리수는 일부러 표현식에 안 적고 따로
      if (id.length < 4 || id.length > 20) {
         alert("아이디는 4~20자리 이내로 입력해주세요.");
         // input에 적은 거 없애기
         $('#memId').val("");
         return false;
      }

      // 숫자로 시작하거나 영소문자와 숫자 외의 것 입력했을 시
      if (!idCheck.test(id)) {
         alert('아이디는 영어로 시작하며 영소문자 혹은 숫자만 사용할 수 있습니다.');
         $('#memId').val("");
         return false;
      }
   });

   /* 비밀번호 정규식 */

   // 영문(대/소문자), 숫자, 특수문자 하나씩은 포함한 10~20자
   const pwCheck = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{10,20}$/m

   $('#newPassword').focusout(function () {
      let pw = $('#newPassword').val();

      // 숫자로 시작하거나 영소문자와 숫자 외의 것 입력했을 시
      if (!pwCheck.test(pw)) {
         alert('비밀번호는 영문(대/소문자), 숫자, 특수문자 하나씩은 포함한 10~20자여야 합니다.');
         $('#newPassword').val("");
         return false;
      }
   });

   // 비밀번호 확인
   $('#chkPassword').focusout(function () {
      let nPw = $('#newPassword').val();
      let cPw = $('#chkPassword').val();

      if (cPw !== nPw) {
         alert('비밀번호가 서로 다릅니다.');
         $('#chkPassword').val("");
         return false;
      }
   });

   /* 이름 정규식 */
   // 한글로만 이루어진 2자 이상
   const nameCheck = /^[ㄱ-힇]{2,}$/m

   $('#memNm').focusout(function () {
      let name = $('#memNm').val();

      // 숫자로 시작하거나 영소문자와 숫자 외의 것 입력했을 시
      if (!nameCheck.test(name)) {
         alert('이름은 한글만 사용할 수 있으며 2글자 이상이어야 합니다.');
         $('#memNm').val("");
         return false;
      }
   });
   /* 휴대폰 정규식 */
   // 01X
   const phoneCheckFst = /^01(?:0|1|[6-9])$/m
   // 십진수 3 혹은 4자
   const phoneCheckSnd = /^(?:\d{3}|\d{4})$/m
   // 십진수 4자
   const phoneCheckTrd = /^\d{4}$/m

   $('#cellPhone').focusout(function () {
      let phone = $('#cellPhone').val();
      // 앞(01X) 중간(3 or 4) 뒤(4)
      let fst, snd, trd;
      // '-' 놉!
      if (/\-/m.test) {
         alert('-없이 입력해주세요.');
         return false;
      } else if (phone.length == 11) { // 11자면 snd 4자리
         fst = phone.slice(0, 3);
         snd = phone.slice(3, 7);
         trd = phone.slice(7, 11);
      } else if (phone.length == 10) { // 11자면 snd 3자리
         fst = phone.slice(0, 3);
         snd = phone.slice(3, 6);
         trd = phone.slice(6, 10);
      }

      if (!phoneCheckFst.test(fst) || !phoneCheckSnd.test(snd) || !phoneCheckTrd.test(trd)) {
         alert('핸드폰 번호를 확인해주세요');
         return false;
      }
   });

   /* 전화번호 정규식 */
   // 십진수 1~12자
   const telCheck = /^\d{1,12}$/m

   $('#phone').focusout(function () {
      let tel = $('#phone').val();
      // '-' 놉!
      if (/\-/m.test(tel)) {
         alert('-없이 입력해주세요.');
         return false;
      }

      if (!telCheck.test(tel)) {
         alert('전화번호를 확인해주세요');
         return false;
      }
   });



</script>
 -->
</html>