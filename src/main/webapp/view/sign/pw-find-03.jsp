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
	
	/* 이전, 다음 버튼 */
	.btn_member_prev {
		width: 150px;
		height: 45px;
		margin: 35px 0 0 0;
		color: #3e3d3c;
		font-size: 14px;
		border: 1px solid #cccccc;
		background: #ffffff;
		cursor: pointer;
	}
	
	.btn_member_prev:hover {
		color: #333333;
		border: 1px solid #bbbbbb;
	}
	
	.btn_member_next {
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
	
	.btn_member_next:hover {
		border: 1px solid #181818;
		background: #181818;
	}
	/* 로그인, 확인 버튼 */
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
	/* 아이디 찾기 버튼 */
	.btn_member_id {
		float: right;
		width: 158px;
		height: 91px;
		margin: 15px 0 0 0;
		color: #ffffff;
		font-size: 15px;
		font-weight: bold;
		border: 1px solid #3e3d3c;
		background: #3e3d3c;
		cursor: pointer;
	}
	
	.btn_member_id:hover {
		border: 1px solid #4f4e4d;
		background: #4f4e4d;
	}
	/* 비밀번호 찾기, 로그인하기 버튼 */
	.btn_member_white {
		width: 150px;
		height: 45px;
		color: #3e3d3c;
		font-weight: bold;
		font-size: 13px;
		border: 1px solid #cccccc;
		background: #fff;
		cursor: pointer;
	}
	
	.btn_member_white:hover {
		color: #333333;
		border: 1px solid #bbbbbb;
	}
	/* 회원가입 등등 */
	.btn_member_black {
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
	
	.btn_member_black:hover {
		border: 1px solid #181818;
		background: #181818;
	}
	/* 취소*/
	.btn_member_cancel {
		width: 150px;
		height: 45px;
		color: #3e3d3c;
		font-weight: bold;
		font-size: 13px;
		border: 1px solid #cccccc;
		background: #fff;
		cursor: pointer;
	}
	
	.btn_member_cancel:hover {
		color: #333333;
		border: 1px solid #bbbbbb;
	}
	/* 회원가입, 휴먼 해제하기 */
	.btn_member_join {
		width: 150px;
		height: 45px;
		margin: 0;
		color: #ffffff;
		font-size: 14px;
		border: 1px solid #666666;
		background: #666666;
		cursor: pointer;
		font-weight: bold;
	}
	
	.btn_member_join:hover {
		border: 1px solid #626262;
		color: #fff;
		background: #626262;
	}
	
	.btn_comfirm {
		width: 150px;
		height: 45px;
		margin: 0;
		color: #ffffff;
		font-size: 14px;
		border: 1px solid #181818;
		background: #181818;
		cursor: pointer;
		font-weight: bold;
	}
	
	.btn_comfirm:hover {
		border: 1px solid #181818;
		color: #fff;
		background: #181818;
	}
	</style>


<%@include file="../common/header.jsp"%>

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
                     <form name="formReset" id="formReset" action="pw-find-04.html">
                        <div class="find_password_reset_box">
                           <h3>인증번호 입력</h3>
                           <p>수신된 이메일의 인증번호를 입력해 주세요.</p>
                           <div class="login_input">
                              <div class="js_input_pw">
                                 <div class="member_warning prior_wrong">
                                    <input type="text" id="passwordMsg" name="memPw" autocomplete="off" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');" placeholder="인증번호 입력" data-min-length="10" data-max-length="16" required>
                                 </div>
                              </div>   
                        </div>
                        <div style="display: flex; justify-content: center;">인증메일이 도착하지 않았나요? &ensp;<a onclick="conum()" href="#">인증번호 다시받기</a></div>
                        <div class="btn_center_box">
                           <button type="button" id="btnCancel" class="btn_member_prev" onclick="location.href='pw-find-02.html'">이전</button>
                           <button type="submit" class="btn_member_next" onclick="return ch()">확인</button>
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
        let pwco = 111111;

        if(pw==""){
         alert("인증번호를 입력해주세요.");
         return false;
        } else if(pw==pwco) {
         alert("확인되었습니다.");
         return true;
        } else {
         alert("인증번호가 틀렸습니다. 다시 입력해주세요.");
         return false;
        }
    }

    function conum(){
      var ans = confirm("인증번호를 재전송 하시겠습니까?");

      if(ans){
         alert("인증번호를 재전송 하였습니다.")
      } else{
         alert("취소하셨습니다.")
      }
    }
</script>
</html>