<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>비밀번호 찾기</title>
	
	<link rel="stylesheet" type="text/css" href="../../css/login-join.css">
	<%@include file="../common/header.jsp"%>

	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('../../images/bg-img-01.png');">
		<h2 class="ltext-105 cl0 txt-center">
			비밀번호 찾기
		</h2>
	</section>


	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="sub_content">
				<div class="content_box">
					<div class="member_wrap">
						<div class="member_cont">
							<div class="user_certify_box">
								<form action="pw-find-03.html" name="formAuth" id="formAuth">
									<div class="user_certify_tit">
										<h3>인증수단 선택</h3>
										<p>본인인증 방법을 선택해 주세요.</p>
									</div>
									<!-- //user_certify_tit -->
									<div class="login_input">
										<div class="form_element">
											<ul class="user_certify_list">
												<li>
													<input type="radio" id="authEmail" name="authType" value="authEmail"
														checked required>이메일 인증<strong>( pol******gns@naver.com
														)</strong>
													<br>
													<span>가입시 등록한 이메일로 인증번호가 발송됩니다.</span>
												</li>
												<p id="errorMessage" class="dn"></p>
											</ul>
										</div>
									</div>
									<!-- //user_certify_list -->
									<div class="btn_member_sec">
										<ul>
											<li><button type="submit" style="color:#fff">다음</button></li>
										</ul>
									</div>
									<!-- //btn_member_sec -->
								</form>
							</div>
							<!-- //user_certify_box -->
						</div>
						<!-- //member_cont -->
					</div>
					<!-- //member_wrap -->
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