<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>아이디 찾기</title>
<link rel="stylesheet" type="text/css" href="../../css/login-join.css">

<%@include file="../common/header.jsp"%>

<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	$(document).ready(function() {
		/* 체크박스 토글 */
		// $('.on').click(function () {
		//    if (this.className == 'on') {
		//       this.className = '';
		//    } else {
		//       this.className = 'on';
		//    }
		// });
		$('.on').click(function() {
			$(this).toggleClass("on");
		});
	});
</script>

<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92"
	style="background-image: url('../../images/bg-img-01.png');">
	<h2 class="ltext-105 cl0 txt-center">아이디 찾기</h2>
</section>


<!-- Content page -->
<section class="bg0 p-t-75 p-b-120">
	<div class="container">
		<div class="sub_content">
			<div class="content_box">
				<div class="member_wrap">
					<div class="member_cont">
						<!-- 나중에 바꿔요 -->
						<form id="formLogin" action="find-pw-01.jsp">
							<input type="hidden" id="mode" name="mode" value="login">
							<div class="member_login_box">
								<div class="login_input_sec">
									<div>
										<input type="text" id="loginId" name="loginId" value=""
											placeholder="이름" required> <input type="email"
											id="loginPwd" name="loginPwd" value="" placeholder="가입메일주소"
											required>
									</div>
									<button type="submit">
										<a onclick="return ch()" style="color: #fff">아이디 찾기</a>
									</button>
								</div>
							</div>
						</form>
						<div class="btn_login_box"
							style="display: flex; justify-content: center;">
							<ul>
								<li><button id="btnJoinMember" class="btn_member_join">
										비밀번호 찾기
									</button></li>
								<li><button id="btnFindId" class="btn_member_white">
										<a href="login.html" style="color: rgb(0, 0, 0)">로그인하기</a>
									</button></li>
							</ul>
						</div>
						<!-- //btn_login_box -->
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
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
	function ch() {
		let name = $("#loginId").val();
		let email = $("#loginPwd").val();
		let tempname = "홍길동";
		let tempemail = "abcd@naver.com";

		if (name == "" || email == "") {
			alert("이름과 메일주소를 정확하게 입력해주세요.");
			return false;
		} else {
			if (name != tempname || email != tempemail) {
				alert("회원정보를 찾을 수 없습니다.")
				return false;
			} else {
				return true;
			}
		}

	}
</script>

</body>
</html>