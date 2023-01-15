<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <title>패스워드 찾기</title>
   
   <link rel="stylesheet" type="text/css" href="../../css/login-join.css">
	
	<style>
		* {
			font-family: GmarketSansMedium;
		}
		
		.member_cont h3 {
			font-weight: normal;
			font-size: 18px;
			color: #222222;
		}
		
		.member_cont h3+p {
			padding: 5px 0 8px 0;
			color: #bebebc;
		}
		
		.login_input, .certify_confirm_input {
			border-top: 1px solid #dbdbdb;
		}
		
		.fc_red {
			color: #fa2828 !important;
		}
		
		input[type="radio"] {
			width: 13px;
			height: 13px;
			vertical-align: top;
		}
		
		input[type="text"], input[type="password"] {
			padding: 0 10px;
			outline: none;
			font-size: 12px;
		}
		
		input[type="checkbox"] {
			width: 13px;
			height: 13px;
			vertical-align: top;
		}
		
		input[type="image"] {
			vertical-align: top;
			border: none;
			cursor: pointer;
		}
		
		input[type="button"] {
			border: none;
			background: none;
			cursor: pointer;
		}
		
		input[type="submit"] {
			cursor: pointer;
			vertical-align: top;
			font-size: 100%;
		}
		
		#wrap .member_warning.prior_wrong, #wrap .member_warning.prior_wrong input,
			#wrap .member_warning.prior_wrong textarea, #wrap .member_warning.prior_wrong .prior_input,
			#wrap .member_warning.prior_wrong .chosen-single {
			margin-bottom: 5px;
			border: 1px solid #181818;
		}
		
		#wrap .member_warning.prior_wrong .chosen-drop {
			margin-top: -6px;
		}
		
		#wrap .member_warning.prior_wrong .text_warning {
			color: #181818;
		}
		
		#wrap .member_warning.prior_wrong .form_element {
			margin-bottom: 5px;
			padding: 5px 0 5px 0;
			border: 1px solid #181818;
		}
		
		#wrap .member_warning.prior_wrong .text_warning+.form_element {
			border: none 0;
		}
		
		.find_password_reset_box .login_input {
			width: 320px;
			padding: 30px 75px 0 76px;
			text-align: center;
		}
		
		.find_password_reset_box .login_input input {
			width: 320px;
			margin: 15px 0 0 0;
			padding: 0 0 0 5px;
		}
		
		.find_password_reset_box .login_input strong {
			display: block;
			padding: 3px 0 0 0;
			text-align: left;
			color: #929292;
			font-weight: normal;
		}
		
		udio {
			position: absolute;
			left: 0;
			bottom: 0
		}
		
		.skip {
			overflow: hidden;
			position: absolute;
			top: -999em;
			left: -999em;
			width: 1px;
			height: 1px;
			background: url("../../img/common/bg/bg_skip.gif") repeat
		}
		
		input[type="text"], input[type="password"] {
			height: 31px;
			padding: 0 5px;
			color: #333333;
			border: 1px solid #d6d6d6;
			line-height: 31px;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
		}
		
		input[type="text"]::-ms-clear {
			display: none;
		}
		
		input:-ms-input-placeholder, input::-webkit-input-placeholder, input::-moz-placeholder,
			textarea:-ms-input-placeholder, textarea::-webkit-input-placeholder,
			textarea::-moz-placeholder {
			color: #cccccc;
		}
		
		textarea {
			padding: 5px;
			color: #a9a9a9;
			border: 1px solid #d6d6d6;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
		}
		
		.hidden {
			overflow: hidden;
			position: absolute;
			top: -9999px;
			left: -9999px;
			visibility: hidden;
			width: 0;
			height: 0;
			margin: 0;
			font-size: 0;
			text-indent: -9999px;
			line-height: 0;
			z-index: -9999;
		}
		
		.text_notover {
			display: block;
			overflow: hidden;
			text-overflow: ellipsis;
			white-space: nowrap;
		}
		
		.dn {
			display: none !important;
		}
		
		.db {
			display: block !important;
		}
		
		.oh {
			overflow: hidden !important;
		}
		
		.btn_left_box {
			text-align: left;
		}
		
		.btn_center_box {
			text-align: center;
		}
		
		.btn_right_box {
			text-align: right;
		}
		
		/* 폰트 컬러 */
		.fc_red {
			color: #fa2828 !important;
		}
		
		input[type="radio"] {
			width: 13px;
			height: 13px;
			vertical-align: top;
		}
		
		input[type="text"], input[type="password"] {
			padding: 0 10px;
			outline: none;
			font-size: 12px;
		}
		
		input[type="checkbox"] {
			width: 13px;
			height: 13px;
			vertical-align: top;
		}
		
		input[type="image"] {
			vertical-align: top;
			border: none;
			cursor: pointer;
		}
		
		input[type="button"] {
			border: none;
			background: none;
			cursor: pointer;
		}
		
		input[type="submit"] {
			cursor: pointer;
			vertical-align: top;
			font-size: 100%;
		}
		
		/* 파일첨부 버튼 꾸미기 */
		.file_upload_sec {
			overflow: hidden;
			width: 100%;
			margin: 5px 0 10px 0;
		}
		
		.file_upload_sec .file_text {
			float: left;
			width: 230px;
		}
		
		.file_upload_sec .btn_upload_box {
			overflow: hidden;
			position: relative;
			float: left;
			width: 150px;
			padding: 0 0 0 6px;
		}
		
		.file_upload_sec .btn_upload_box .btn_upload {
			width: 70px;
			height: 31px;
			color: #fff;
			border: 1px solid #979797;
			background: #979797;
			text-align: center;
		}
		
		.file_upload_sec .btn_upload_box .file {
			position: absolute;
			top: 0;
			right: 76px;
			height: 31px;
			cursor: pointer;
			opacity: 0;
			filter: alpha(opacity = 0);
			-ms-filter: "alpha(opacity=0)";
			-khtml-opacity: 0;
			-moz-opacity: 0;
		}
		/* 추가,삭제 버튼 */
		.file_upload_sec .btn_upload_box .btn_gray_big {
			width: 62px;
		}
		
		.file_upload_sec .form_element {
			display: block;
			width: 100%;
			padding: 0 10px 3px 0;
		}
		
		.file_upload_sec .link_file_down {
			padding: 0 10px 0 0;
		}
		
		.file_upload_sec .link_file_down:hover {
			text-decoration: underline;
		}
		
		/* 셀렉트박스 */
		select {
			height: 31px;
			color: #717171;
			vertical-align: top;
			outline: none;
		}
		
		#wrap .chosen-container {
			vertical-align: top;
			text-align: left;
		}
		
		#wrap .chosen-single {
			height: 31px;
			color: #717171;
			vertical-align: top;
			outline: none;
			border: 1px solid #cccccc;
		}
		
		#wrap .chosen-single>span {
			line-height: 30px;
		}
		
		#wrap .chosen-container .chosen-results li {
			float: none;
		}
		
		#wrap .chosen-container .chosen-drop {
			border: 1px solid #cccccc;
			border-top: none 0;
		}
		
		#wrap .chosen-container .chosen-results li.active-result {
			text-align: left;
		}
		
		/*#quick_search .chosen-container{vertical-align:top; text-align:left;}
		#quick_search .chosen-single{height:31px; color:#717171; vertical-align:top; outline:none; border:1px solid #cccccc;}
		#quick_search .chosen-single > span{line-height:30px;}
		#quick_search .chosen-container .chosen-results li{float:none;}
		#quick_search .chosen-container .chosen-drop{border:1px solid #cccccc; border-top:none 0;}
		#quick_search .chosen-container .chosen-results li.active-result{text-align:left;}*/
		
		/* 레이어팝업 셀렉트 박스 */
		.layer_wrap .chosen-container {
			vertical-align: top;
		}
		
		.layer_wrap .chosen-container .chosen-single {
			height: 31px;
			color: #717171;
			vertical-align: top;
			outline: none;
			border: 1px solid #cccccc;
		}
		
		.layer_wrap .chosen-container .chosen-single>span {
			line-height: 30px;
		}
		
		.layer_wrap .chosen-container .chosen-results li {
			float: none;
		}
		
		/* 체크박스 라디오버튼 스타일 */
		.form_element {
			display: inline-block;
			overflow: hidden;
			position: relative;
		}
		
		span.form_element {
			display: inline-block;
		}
		
		.form_element label {
			position: relative;
			top: 0;
			left: 0;
			display: inline-block;
			min-width: 20px;
			min-height: 20px;
			padding: 0 0 0 27px;
			background: url('../../img/common/input/check_off.png') no-repeat 1px
				top;
		}
		
		.form_element label:hover {
			background: url('../../img/common/input/check_over.png') no-repeat 1px
				top;
		}
		
		.form_element label.on {
			background: url('../../img/common/input/check_on.png') no-repeat 1px top;
		}
		
		.form_element label.choice {
			background: url('../../img/common/input/radio_off.png') no-repeat 1px
				50%;
		}
		
		.form_element label.choice:hover {
			background: url('../../img/common/input/radio_over.png') no-repeat 1px
				50%;
		}
		
		.form_element label.choice.on {
			background: url('../../img/common/input/radio_on.png') no-repeat 1px 50%;
		}
		
		.form_element label.check_s {
			min-width: 13px;
			padding: 0 0 0 22px;
			background: url('../../img/common/input/check_off_small.png') no-repeat
				1px 2px;
		}
		
		.form_element label.check_s:hover {
			background: url('../../img/common/input/check_over_small.png') no-repeat
				1px 2px;
		}
		
		.form_element label.check_s.on {
			background: url('../../img/common/input/check_on_small.png') no-repeat
				1px 2px;
		}
		
		.form_element label.choice_s {
			min-width: 13px;
			padding: 0 0 0 22px;
			background: url('../../img/common/input/radio_off_small.png') no-repeat
				1px 50%;
		}
		
		.form_element label.choice_s:hover {
			background: url('../../img/common/input/radio_over_small.png') no-repeat
				1px 50%;
		}
		
		.form_element label.choice_s.on {
			background: url('../../img/common/input/radio_on_small.png') no-repeat
				1px 50%;
		}
		
		.form_element label.single {
			width: 21px;
			height: 21px;
			padding: 1px 0 0;
			background-color: transparent;
			text-indent: -9999px;
		}
		
		.form_element label.single:hover {
			background-color: transparent;
		}
		
		.form_element label span {
			color: #979797;
		}
		
		.form_element label img {
			vertical-align: middle;
		}
		
		.form_element input {
			position: absolute;
			top: 3px;
			left: 1px;
			width: 0;
			z-index: -1;
		}
		
		/* 경고 텍스트 */
		#wrap .login_input .member_warning {
			display: block;
		}
		
		#wrap .member_warning {
			display: inline;
			position: relative;
		}
		
		#wrap .member_warning+.text_warning, #wrap .member_warning .text_warning
			{
			display: none;
			letter-spacing: -1px;
		}
		
		#wrap .member_warning .text_warning a {
			text-decoration: underline;
		}
		
		#wrap .member_warning input.text+label {
			position: absolute;
			top: 6px;
			left: 10px;
		}
		
		#wrap .member_warning.prior_wrong .text_warning, #wrap .member_warning.prior_half_pass .text_warning
			{
			display: block;
		}
		
		#wrap .member_warning.prior_wrong+.text_warning, #wrap .member_warning.prior_half_pass+.text_warning
			{
			display: block;
		}
		
		#wrap .text_warning {
			color: #181818;
			text-align: left;
		}
		
		#wrap .text_pass {
			color: #329cff;
			text-align: left;
		}
		
		/* 글자수 작을 때, 사용불가 */
		#wrap .member_warning.prior_wrong, #wrap .member_warning.prior_wrong input,
			#wrap .member_warning.prior_wrong textarea, #wrap .member_warning.prior_wrong .prior_input,
			#wrap .member_warning.prior_wrong .chosen-single {
			margin-bottom: 5px;
			border: 1px solid #181818;
		}
		
		#wrap .member_warning.prior_wrong .chosen-drop {
			margin-top: -6px;
		}
		
		#wrap .member_warning.prior_wrong .text_warning {
			color: #181818;
		}
		
		#wrap .member_warning.prior_wrong .form_element {
			margin-bottom: 5px;
			padding: 5px 0 5px 0;
			border: 1px solid #181818;
		}
		
		#wrap .member_warning.prior_wrong .text_warning+.form_element {
			border: none 0;
		}
		
		/* 안전도 낮음 */
		#wrap .member_warning.prior_half_pass, #wrap .member_warning.prior_half_pass input,
			#wrap .member_warning.prior_half_pass textarea, #wrap .member_warning.prior_half_pass .prior_input,
			#wrap .member_warning.prior_half_pass .chosen-single {
			margin-bottom: 5px;
		}
		
		#wrap .member_warning.prior_half_pass .text_warning {
			color: #181818;
		}
		
		#wrap .member_warning.prior_half_pass .text_pass {
			color: #329cff;
		}
		
		#wrap .member_warning.prior_half_pass .form_element {
			padding: 5px 0 5px 0;
		}
		
		/* Slider */
		.slider_wrap {
			overflow: hidden;
			position: relative;
			display: block;
			margin: 0 auto;
			box-sizing: border-box;
			-webkit-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
			user-select: none;
			-webkit-touch-callout: none;
			-khtml-user-select: none;
			-ms-touch-action: pan-y;
			touch-action: pan-y;
			-webkit-tap-highlight-color: transparent;
		}
		
		.slick-slider {
			overflow: hidden;
			position: relative;
			display: block;
			margin: auto;
			box-sizing: border-box;
			text-align: center;
			-webkit-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
			user-select: none;
			-webkit-touch-callout: none;
			-khtml-user-select: none;
			-ms-touch-action: pan-y;
			touch-action: pan-y;
			-webkit-tap-highlight-color: transparent;
		}
		
		.slick-slider .slick-list {
			display: block;
			overflow: hidden;
			position: relative;
			margin: 0;
			padding: 0;
		}
		
		.slick-slider .slick-track, .slider_wrap .slick-list {
			-webkit-transform: translate3d(0, 0, 0);
			-moz-transform: translate3d(0, 0, 0);
			-ms-transform: translate3d(0, 0, 0);
			-o-transform: translate3d(0, 0, 0);
			transform: translate3d(0, 0, 0);
		}
		
		.slick-track {
			display: block;
			position: relative;
			top: 0;
			left: 0;
		}
		
		.slick-track:before, .slick-track:after {
			display: table;
			content: '';
		}
		
		.slick-track:after {
			clear: both;
		}
		
		.slick-loading .slick-track {
			visibility: hidden;
		}
		
		.slick-slide {
			display: none;
			float: left;
			height: 100%;
			min-height: 1px;
		}
		
		[dir='rtl'] .slick-slide {
			float: right;
		}
		/*.slick-slide img{display:block; position:static !important; top:0px !important;}*/
		.slick-slide.slick-loading img {
			display: none;
		}
		
		.slick-slide.dragging img {
			pointer-events: none;
		}
		
		.slick-slide {
			display: block;
		}
		
		.slick-loading .slick-slide {
			visibility: hidden;
		}
		
		.slick-vertical .slick-slide {
			display: block;
			height: auto;
			border: 1px solid transparent;
		}
		
		.slick-arrow.slick-hidden {
			display: none;
		}
		
		.slick-prev, .slick-next {
			font-size: 0;
			line-height: 0;
			position: absolute;
			top: 45%;
			display: block;
			width: 27px;
			height: 44px;
			padding: 0;
			cursor: pointer;
			z-index: 10;
			background-repeat: no-repeat;
			-webkit-transform: translate(0, -45%);
			-ms-transform: translate(0, -45%);
			transform: translate(0, -45%);
		}
		
		.slick-prev {
			left: 25px;
			right: auto;
		}
		
		.slick-next {
			left: auto;
			right: 25px;
		}
		
		.slick-dots {
			display: block;
			position: absolute;
			bottom: 30px;
			width: 100%;
			margin: 0;
			padding: 0;
			text-align: center;
			z-index: 105
		}
		
		.slick-dots li {
			display: inline-block;
			position: relative;
			margin: 0 5px;
			padding: 0;
			cursor: pointer;
		}
		
		.slick-dots li button {
			display: block;
			padding: 5px;
			font-size: 0;
			line-height: 0;
			cursor: pointer;
			border: 0;
			outline: none;
			opacity: 0.75;
		}
		
		.slick-dots li.slick-active button {
			opacity: 1;
		}
		
		.slick-slider * {
			outline: none !important;
		}
		/* 레이어 팝업 */
		.layer_pop {
			display: none;
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			z-index: 300;
		}
		
		.layer_pop .layer_layout_box {
			position: relative;
			width: 100%;
			height: 100%;
			overflow-y: scroll;
			background: rgba(0, 0, 0, 0.6); /* IE 5.5 - 7 */
			filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
				endColorstr=#99000000); /* IE 8 */
			-ms-filter:
				"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,endColorstr=#99000000)";
		}
		
		.layer_pop .layer_layout_box .bg {
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			background: #000;
			opacity: 0.1;
		}
		
		.layer_pop .layer_layout_box .layer_container_box {
			position: absolute;
			top: 0;
			left: 50%;
		}
		
		.layer_pop .layer_layout_box .layer_container_box .layer_content_box {
			padding: 50px 0;
		}
		
		.btn_member_ok, .btn_member_login {
			width: 150px;
			height: 45px;
			margin: 35px 0 0 0;
			color: #ffffff;
			font-size: 14px;
			border: 1px solid #181818;
			background: #181818;
			cursor: pointer;
		}
		
		.btn_member_ok:hover, .btn_member_login:hover {
			border: 1px solid #181818;
			background: #181818;
		}
	</style>

<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
   $(document).ready(function () {
      /* 체크박스 토글 */
      // $('.on').click(function () {
      //    if (this.className == 'on') {
      //       this.className = '';
      //    } else {
      //       this.className = 'on';
      //    }
      // });

      $('.on').click(function () {
         $(this).toggleClass("on");
      });
   });
</script>

<%@include file="../common/header.jsp"%>

   <!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('../../images/bg-img-01.png');">
      <h2 class="ltext-105 cl0 txt-center">
         패스워드 찾기
      </h2>
   </section>


   <!-- Content page -->
   <section class="bg0 p-t-75 p-b-120">
      <div class="container">
         <div class="sub_content">
            <div class="content_box">
               <div class="member_wrap">
                  <div class="member_cont">
                     <!-- 나중에 바꿔요 -->
                     <form name="formReset" id="formReset" action="login.html">
                        <div class="find_password_reset_box">
                           <h3>비밀번호 변경</h3>
                           <p>새로운 비밀번호를 등록해 주세요.</p>
                           <div class="login_input">
                              <div class="js_input_pw">
                                 <div class="member_warning prior_wrong">
                                    <input type="password" id="passwordMsg" name="memPw" autocomplete="off" placeholder="영문대/소문자, 숫자, 특수문자 중 2가지 이상 조합하세요" data-min-length="10" data-max-length="16" required>
                                 </div>
                              </div>
                              <div class="js_input_pw">
                                 <div class="member_warning prior_wrong">
                                    <input type="password" id="newPwRe" name="memPwRe" autocomplete="off" placeholder="새 비밀번호 확인" required>
                                 </div>
                              </div>
                           </div>
                           <div class="btn_center_box" style="display: flex; justify-content: center;">
                              <button type="submit" id="btnConfirm" class="btn_member_ok" onclick="return ch()">확인</button>
                           </div>
                        </div>
                        <!-- //find_password_reset_box -->
                     </form>
                     <!-- //btn_login_box -->
                  </div>
                  <!-- //member_cont -->
               </div>
               <!-- //member_wrap -->
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
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
    function ch(){
        let pw = $("#passwordMsg").val();
        let pwc = $("#newPwRe").val();

        let number = pw.search(/[0-9]/g);
        let english = pw.search(/[a-z]/ig);
        let spece = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
        let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

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

        } else if (/(\w)\1\1\1/.test(pw)) {
            alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
            return false;

        } else {
            if(pw != pwc){
                alert("비밀번호가 일치하지 않습니다.");
                return false
            } else{
                alert("변경이 완료되었습니다!");
                return true;    
            }
            
        }

        if (false === reg.test(pw)) {
            alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
            return false;
        } else {
         if(pw != pwc){
                alert("비밀번호가 일치하지 않습니다.");
                return false
            } else{
                alert("변경이 완료되었습니다!");
                return true;    
            }
        }
    }
</script>
</html>