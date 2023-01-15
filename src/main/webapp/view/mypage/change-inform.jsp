<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>회원정보변경</title>
<style>
/* @group Base */
.chosen-container {
	position: relative;
	display: inline-block;
	vertical-align: middle;
	font-size: 13px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.chosen-container * {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.chosen-container .chosen-drop {
	position: absolute;
	top: 100%;
	z-index: 1010;
	width: 100%;
	border: 1px solid #aaa;
	border-top: 0;
	background: #fff;
	-webkit-box-shadow: 0 4px 5px rgba(0, 0, 0, 0.15);
	box-shadow: 0 4px 5px rgba(0, 0, 0, 0.15);
	clip: rect(0, 0, 0, 0);
	-webkit-clip-path: inset(100% 100%);
	clip-path: inset(100% 100%);
}

.chosen-container.chosen-with-drop .chosen-drop {
	clip: auto;
	-webkit-clip-path: none;
	clip-path: none;
}

.chosen-container a {
	cursor: pointer;
}

.chosen-container .search-choice .group-name, .chosen-container .chosen-single .group-name
	{
	margin-right: 4px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	font-weight: normal;
	color: #999999;
}

.chosen-container .search-choice .group-name:after, .chosen-container .chosen-single .group-name:after
	{
	content: ":";
	padding-left: 2px;
	vertical-align: top;
}

/* @end */
/* @group Single Chosen */
.chosen-container-single .chosen-single {
	position: relative;
	display: block;
	overflow: hidden;
	padding: 0 0 0 8px;
	height: 25px;
	border: 1px solid #aaa;
	border-radius: 5px;
	background-color: #fff;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(20%, #fff),
		color-stop(50%, #f6f6f6), color-stop(52%, #eee), to(#f4f4f4));
	background: linear-gradient(#fff 20%, #f6f6f6 50%, #eee 52%, #f4f4f4 100%);
	background-clip: padding-box;
	-webkit-box-shadow: 0 0 3px #fff inset, 0 1px 1px rgba(0, 0, 0, 0.1);
	box-shadow: 0 0 3px #fff inset, 0 1px 1px rgba(0, 0, 0, 0.1);
	color: #444;
	text-decoration: none;
	white-space: nowrap;
	line-height: 24px;
}

.chosen-container-single .chosen-default {
	color: #999;
}

.chosen-container-single .chosen-single span {
	display: block;
	overflow: hidden;
	margin-right: 26px;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.chosen-container-single .chosen-single-with-deselect span {
	margin-right: 38px;
}

.chosen-container-single .chosen-single abbr {
	position: absolute;
	top: 6px;
	right: 26px;
	display: block;
	width: 12px;
	height: 12px;
	background: url("chosen-sprite.png") -42px 1px no-repeat;
	font-size: 1px;
}

.chosen-container-single .chosen-single abbr:hover {
	background-position: -42px -10px;
}

.chosen-container-single.chosen-disabled .chosen-single abbr:hover {
	background-position: -42px -10px;
}

.chosen-container-single .chosen-single div {
	position: absolute;
	top: 0;
	right: 0;
	display: block;
	width: 18px;
	height: 100%;
}

.chosen-container-single .chosen-single div b {
	display: block;
	width: 100%;
	height: 100%;
	background: url("chosen-sprite.png") no-repeat 0px 2px;
}

.chosen-container-single .chosen-search {
	position: relative;
	z-index: 1010;
	margin: 0;
	padding: 3px 4px;
	white-space: nowrap;
}

.chosen-container-single .chosen-search input[type="text"] {
	margin: 1px 0;
	padding: 4px 20px 4px 5px;
	width: 100%;
	height: auto;
	outline: 0;
	border: 1px solid #aaa;
	background: url("chosen-sprite.png") no-repeat 100% -20px;
	font-size: 1em;
	font-family: sans-serif;
	line-height: normal;
	border-radius: 0;
}

.chosen-container-single .chosen-drop {
	margin-top: -1px;
	border-radius: 0 0 4px 4px;
	background-clip: padding-box;
}

.chosen-container-single.chosen-container-single-nosearch .chosen-search
	{
	position: absolute;
	clip: rect(0, 0, 0, 0);
	-webkit-clip-path: inset(100% 100%);
	clip-path: inset(100% 100%);
}

/* @end */
/* @group Results */
.chosen-container .chosen-results {
	color: #444;
	position: relative;
	overflow-x: hidden;
	overflow-y: auto;
	margin: 0 4px 4px 0;
	padding: 0 0 0 4px;
	max-height: 240px;
	-webkit-overflow-scrolling: touch;
}

.chosen-container .chosen-results li {
	display: none;
	margin: 0;
	padding: 5px 6px;
	list-style: none;
	line-height: 15px;
	word-wrap: break-word;
	-webkit-touch-callout: none;
}

.chosen-container .chosen-results li.active-result {
	display: list-item;
	cursor: pointer;
}

.chosen-container .chosen-results li.disabled-result {
	display: list-item;
	color: #ccc;
	cursor: default;
}

.chosen-container .chosen-results li.highlighted {
	background-color: #3875d7;
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(20%, #3875d7),
		color-stop(90%, #2a62bc));
	background-image: linear-gradient(#3875d7 20%, #2a62bc 90%);
	color: #fff;
}

.chosen-container .chosen-results li.no-results {
	color: #777;
	display: list-item;
	background: #f4f4f4;
}

.chosen-container .chosen-results li.group-result {
	display: list-item;
	font-weight: bold;
	cursor: default;
}

.chosen-container .chosen-results li.group-option {
	padding-left: 15px;
}

.chosen-container .chosen-results li em {
	font-style: normal;
	text-decoration: underline;
}

/* @end */
/* @group Multi Chosen */
.chosen-container-multi .chosen-choices {
	position: relative;
	overflow: hidden;
	margin: 0;
	padding: 0 5px;
	width: 100%;
	height: auto;
	border: 1px solid #aaa;
	background-color: #fff;
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(1%, #eee),
		color-stop(15%, #fff));
	background-image: linear-gradient(#eee 1%, #fff 15%);
	cursor: text;
}

.chosen-container-multi .chosen-choices li {
	float: left;
	list-style: none;
}

.chosen-container-multi .chosen-choices li.search-field {
	margin: 0;
	padding: 0;
	white-space: nowrap;
}

.chosen-container-multi .chosen-choices li.search-field input[type="text"]
	{
	margin: 1px 0;
	padding: 0;
	height: 25px;
	outline: 0;
	border: 0 !important;
	background: transparent !important;
	-webkit-box-shadow: none;
	box-shadow: none;
	color: #999;
	font-size: 100%;
	font-family: sans-serif;
	line-height: normal;
	border-radius: 0;
	width: 25px;
}

.chosen-container-multi .chosen-choices li.search-choice {
	position: relative;
	margin: 3px 5px 3px 0;
	padding: 3px 20px 3px 5px;
	border: 1px solid #aaa;
	max-width: 100%;
	border-radius: 3px;
	background-color: #eeeeee;
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(20%, #f4f4f4),
		color-stop(50%, #f0f0f0), color-stop(52%, #e8e8e8), to(#eee));
	background-image: linear-gradient(#f4f4f4 20%, #f0f0f0 50%, #e8e8e8 52%, #eee 100%);
	background-size: 100% 19px;
	background-repeat: repeat-x;
	background-clip: padding-box;
	-webkit-box-shadow: 0 0 2px #fff inset, 0 1px 0 rgba(0, 0, 0, 0.05);
	box-shadow: 0 0 2px #fff inset, 0 1px 0 rgba(0, 0, 0, 0.05);
	color: #333;
	line-height: 13px;
	cursor: default;
}

.chosen-container-multi .chosen-choices li.search-choice span {
	word-wrap: break-word;
}

.chosen-container-multi .chosen-choices li.search-choice .search-choice-close
	{
	position: absolute;
	top: 4px;
	right: 3px;
	display: block;
	width: 12px;
	height: 12px;
	background: url("chosen-sprite.png") -42px 1px no-repeat;
	font-size: 1px;
}

.chosen-container-multi .chosen-choices li.search-choice .search-choice-close:hover
	{
	background-position: -42px -10px;
}

.chosen-container-multi .chosen-choices li.search-choice-disabled {
	padding-right: 5px;
	border: 1px solid #ccc;
	background-color: #e4e4e4;
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(20%, #f4f4f4),
		color-stop(50%, #f0f0f0), color-stop(52%, #e8e8e8), to(#eee));
	background-image: linear-gradient(#f4f4f4 20%, #f0f0f0 50%, #e8e8e8 52%, #eee 100%);
	color: #666;
}

.chosen-container-multi .chosen-choices li.search-choice-focus {
	background: #d4d4d4;
}

.chosen-container-multi .chosen-choices li.search-choice-focus .search-choice-close
	{
	background-position: -42px -10px;
}

.chosen-container-multi .chosen-results {
	margin: 0;
	padding: 0;
}

.chosen-container-multi .chosen-drop .result-selected {
	display: list-item;
	color: #ccc;
	cursor: default;
}

/* @end */
/* @group Active  */
.chosen-container-active .chosen-single {
	border: 1px solid #5897fb;
	-webkit-box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
}

.chosen-container-active.chosen-with-drop .chosen-single {
	border: 1px solid #aaa;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(20%, #eee),
		color-stop(80%, #fff));
	background-image: linear-gradient(#eee 20%, #fff 80%);
	-webkit-box-shadow: 0 1px 0 #fff inset;
	box-shadow: 0 1px 0 #fff inset;
}

.chosen-container-active.chosen-with-drop .chosen-single div {
	border-left: none;
	background: transparent;
}

.chosen-container-active.chosen-with-drop .chosen-single div b {
	background-position: -18px 2px;
}

.chosen-container-active .chosen-choices {
	border: 1px solid #5897fb;
	-webkit-box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
}

.chosen-container-active .chosen-choices li.search-field input[type="text"]
	{
	color: #222 !important;
}

/* @end */
/* @group Disabled Support */
.chosen-disabled {
	opacity: 0.5 !important;
	cursor: default;
}

.chosen-disabled .chosen-single {
	cursor: default;
}

.chosen-disabled .chosen-choices .search-choice .search-choice-close {
	cursor: default;
}

/* @end */
/* @group Right to Left */
.chosen-rtl {
	text-align: right;
}

.chosen-rtl .chosen-single {
	overflow: visible;
	padding: 0 8px 0 0;
}

.chosen-rtl .chosen-single span {
	margin-right: 0;
	margin-left: 26px;
	direction: rtl;
}

.chosen-rtl .chosen-single-with-deselect span {
	margin-left: 38px;
}

.chosen-rtl .chosen-single div {
	right: auto;
	left: 3px;
}

.chosen-rtl .chosen-single abbr {
	right: auto;
	left: 26px;
}

.chosen-rtl .chosen-choices li {
	float: right;
}

.chosen-rtl .chosen-choices li.search-field input[type="text"] {
	direction: rtl;
}

.chosen-rtl .chosen-choices li.search-choice {
	margin: 3px 5px 3px 0;
	padding: 3px 5px 3px 19px;
}

.chosen-rtl .chosen-choices li.search-choice .search-choice-close {
	right: auto;
	left: 4px;
}

.chosen-rtl.chosen-container-single .chosen-results {
	margin: 0 0 4px 4px;
	padding: 0 4px 0 0;
}

.chosen-rtl .chosen-results li.group-option {
	padding-right: 15px;
	padding-left: 0;
}

.chosen-rtl.chosen-container-active.chosen-with-drop .chosen-single div
	{
	border-right: none;
}

.chosen-rtl .chosen-search input[type="text"] {
	padding: 4px 5px 4px 20px;
	background: url("chosen-sprite.png") no-repeat -30px -20px;
	direction: rtl;
}

.chosen-rtl.chosen-container-single .chosen-single div b {
	background-position: 6px 2px;
}

.chosen-rtl.chosen-container-single.chosen-with-drop .chosen-single div b
	{
	background-position: -12px 2px;
}

.chosen-container-single .chosen-single {
	position: relative;
	display: block;
	overflow: hidden;
	padding: 0 0 0 8px;
	height: 25px;
	border: 1px solid #aaa;
	border-radius: 5px;
	background-color: #fff;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(20%, #fff),
		color-stop(50%, #f6f6f6), color-stop(52%, #eee), to(#f4f4f4));
	background: linear-gradient(#fff 20%, #f6f6f6 50%, #eee 52%, #f4f4f4 100%);
	background-clip: padding-box;
	-webkit-box-shadow: 0 0 3px #fff inset, 0 1px 1px rgba(0, 0, 0, 0.1);
	box-shadow: 0 0 3px #fff inset, 0 1px 1px rgba(0, 0, 0, 0.1);
	color: #444;
	text-decoration: none;
	white-space: nowrap;
	line-height: 24px;
}

.chosen-container * {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.chosen-container-single .chosen-single span {
	display: block;
	overflow: hidden;
	margin-right: 26px;
	text-overflow: ellipsis;
	white-space: nowrap;
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

.join-agreement-content .form-element em {
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

.member-wrap {
	width: 593px;
	margin: 20px auto 40px auto;
}

.join-agreement-wrap .member-title {
	overflow: hidden;
	border-bottom: 1px solid #999999;
}

.member-title h2 {
	font-size: 28px;
	margin: 0 0 20px 0;
	font-weight: bold;
}

.join-agreement-wrap .member-title ol {
	float: right;
	line-height: 62px;
}

.join-agreement-wrap .member-title .page-on {
	color: #181818;
}

.join-agreement-wrap .member-title ol li {
	float: left;
	font-size: 14px;
	color: #d1d1d1;
}

.join-agreement-wrap .member-title li span {
	font-size: 16px;
	font-weight: bold;
}

.join-agreement-wrap .member-title li span>img {
	padding: 0 14px;
	vertical-align: -1px;
}

.join-agreement-wrap .member-content {
	width: 743px;
	margin: 0 auto;
	border: none;
}

.member-content {
	padding: 70px 60px;
	/* border: 1px solid #dbdbdb; */
}

.join-agreement-wrap .join-agreement-content {
	padding: 30px 0 0 0;
	border-top: 1px solid #999999;
}

.join-agreement-content .join-agreement-box {
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
	background:
		url("https://www.boardgamemall.co.kr/data/skin/front/natural_C/img/common/input/check_off.png")
		no-repeat 1px top;
}

.join-agreement-content .form-element span {
	color: #717171;
	font-size: 11px;
}

.join-agreement-content .form-element span>a {
	padding: 0 10px 0 5px;
	color: #181818;
	font-size: 12px;
	background:
		url("https://www.boardgamemall.co.kr/data/skin/front/natural-C/img/member/icon-arrow-03.png")
		no-repeat right center;
	text-decoration: underline;
}

.join-agreement-content .agreement-box {
	overflow-x: hidden;
	overflow-y: auto;
	height: 89px;
	margin: 10px 0 0;
	padding: 20px;
	border: 1px solid #e6e6e6;
	border-top: 1px solid #999999;
	line-height: 18px;
}

.member-content .btn-center-box, .member-warning+.btn-center-box {
	margin: 35px 0 0 0;
}

.base-info-section table th:first-child, .base-info-section table td:first-child
	{
	border-left: none;
}

.base-info-section table th {
	text-align: left;
	padding-left: 12px;
	border-bottom: 1px solid #dcdcdc;
	background: #fbfbfb;
}

.join-base-wrap table th {
	padding: 10px 25px;
}

.join-base-wrap table th span {
	padding: 0 0 0 10px;
	margin: 0 0 0 -10px;
}

.base-info-section table td {
	padding: 15px 0 15px 15px;
	border-bottom: 1px solid #dcdcdc;
}

#wrap .member-warning {
	display: inline;
	position: relative;
}

.base-info-section table input[type="text"] {
	width: 380px;
}

input[type="text"], input[type="password"] {
	padding: 0 10px;
	outline: none;
	font-size: 12px;
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

.join-base-wrap .important {
	background:
		url("https://www.boardgamemall.co.kr/data/skin/front/natural_C/img/member/icon_dot_03.png")
		no-repeat 0 center;
}

.base-info-section table .form-element {
	display: block;
	margin-top: 5px;
}

.form-element input {
	position: absolute;
	top: 3px;
	left: 1px;
	width: 0;
	z-index: -1;
}

input[type="checkbox"] {
	width: 13px;
	height: 13px;
	vertical-align: top;
}

#contents .member-address .address-postcode {
	overflow: hidden;
}

#contents .member-address .address-postcode input {
	float: left;
	width: 190px;
}

input[type="button"] {
	border: none;
	background: none;
	cursor: pointer;
}

#contents .member-address .address-input {
	float: left;
	width: 72%;
}

.btn-center-box {
	text-align: center;
}

.btn-member-prev {
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

.btn-member-next {
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

/* 서브 메뉴가 오른쪽일때 */
#contents .sub_content>.content+.side_cont {
	padding: 0 0 0 40px;
}

#contents .sub_content>.content+.side_cont .sub_menu_box.layer_type .sub_depth1
	{
	right: 200px;
}

#contents .sub_content>.content+.side_cont .sub_menu_box.layer_type .sub_depth2
	{
	right: 160px;
}

#contents .sub_content>.content+.side_cont .sub_menu_box.layer_type .sub_depth3
	{
	right: 160px;
}

#contents .sub_content>.content+.side_cont .sub_menu_box.layer_type .sub_depth4
	{
	right: 160px;
}

/* 서브사이드  마이페이지 */
.side_cont .sub_menu_box .sub_menu_mypage {
	margin: 7px 0 0 0;
}

.side_cont .sub_menu_box .sub_menu_mypage>li {
	padding: 8px 0 20px 0;
	font-size: 14px;
	background: url('../../img/common/lnb_tit.png') no-repeat top left;
}

.side_cont .sub_menu_box .sub_menu_mypage>li:first-child {
	margin: 30px 0 0 0;
}

.side_cont .sub_menu_box .sub_menu_mypage a {
	display: block;
	padding: 7px 0 6px 0;
	font-size: 14px;
}

.side_cont .sub_menu_box .sub_menu_mypage a:hover, .side_cont .sub_menu_box .sub_menu_mypage .active
	{
	font-weight: bold;
	background: #f8f8f8;
	color: #212121;
}

.side_cont .sub_menu_box .sub_menu_mypage .sub_depth1 {
	margin: 5px 0 25px 0;
}

.side_cont .sub_menu_box .sub_menu_mypage .sub_depth1 li {
	padding: 1px 0 0 0;
	font-weight: normal;
}

.side_cont .sub_menu_box .sub_menu_mypage .sub_depth1 a {
	text-decoration: none;
	color: #999999;
	font-size: 12px;
	text-indent: 10px;
	color: #999999;
}

/* 서브 사이드 메뉴 */
.sub_menu_box {
	font-family: 'GmarketSansMedium';
}

.side_cont .sub_menu_box {
	min-height: 250px;
	padding: 0 0 50px 0;
}

.side_cont .sub_menu_box .sub_menu {
	margin: 7px 0 0 0;
}

.side_cont .sub_menu_box .sub_menu li {
	padding: 1px 0 0 0;
}

.side_cont .sub_menu_box .sub_menu a {
	display: block;
	padding: 7px 0 6px 10px;
	font-size: 14px;
}

.side_cont .sub_menu_box .sub_menu a:hover, .side_cont .sub_menu_box .sub_menu .active
	{
	font-weight: bold;
	background: #f8f8f8;
	color: #212121;
}

.side_cont .sub_menu_box .sub_menu .sub_depth1 {
	margin: 0 0 15px 0;
}

.side_cont .sub_menu_box .sub_menu .sub_depth1 li {
	
}

.side_cont .sub_menu_box .sub_menu .sub_depth1 a {
	padding: 0 0 0 10px;
	font-size: 12px;
}

.sub_menu_box_tit {
	color: #ffffff;
	background-color: #0188CB;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-left: 15px;
}

.sub_menu_box_tit h2 {
	font-size: 18px;
}

/* CSS Document */

/* reset */
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code,
	form, fieldset, legend, textarea, p, blockquote, th, td, input, select,
	textarea, button {
	margin: 0;
	padding: 0
}

fieldset, img {
	border: 0 none;
	vertical-align: top;
}

dl, ul, ol, li {
	list-style: none
}

blockquote, q {
	quotes: none
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none
}

input, select, textarea, button {
	vertical-align: middle
}

button {
	border: 0 none;
	background-color: transparent;
	cursor: pointer
}

body {
	background: #fff
}

body, th, td, input, select, textarea, button {
	font-size: 12px;
	line-height: 1.5;
	font-family: 'SUIT', sans-serif;
	color: #333
} /* color값은 디자인가이드에 맞게사용 */
a {
	color: #333;
	text-decoration: none
}

a:active, a:hover {
	text-decoration: none;
}

address, caption, cite, code, dfn, em, var {
	font-style: normal;
	font-weight: normal
}

@font-face {
	font-family: 'SUIT';
	font-weight: 500;
	font-style: normal;
	src:
		url('https://cdn.jsdelivr.net/gh/webfontworld/sunn/SUIT-Medium.eot');
	src:
		url('https://cdn.jsdelivr.net/gh/webfontworld/sunn/SUIT-Medium.eot?#iefix')
		format('embedded-opentype'),
		url('https://cdn.jsdelivr.net/gh/webfontworld/sunn/SUIT-Medium.woff2')
		format('woff2'),
		url('https://cdn.jsdelivr.net/gh/webfontworld/sunn/SUIT-Medium.woff')
		format('woff'),
		url('https://cdn.jsdelivr.net/gh/webfontworld/sunn/SUIT-Medium.ttf')
		format("truetype");
	font-display: swap;
}

@font-face {
	font-family: 'NEXON Lv1 Gothic OTF';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'NEXON Lv2 Gothic';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv2 Gothic.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'GmarketSansLight';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'GmarketSansBold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansBold.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

#mm {
	display: flex;
	align: center !important;
	width: 100%;
	flex-wrap: wrap;
	justify-content: center;
}

.LLi {
	width: 450px;
}

#mm ul {
	width: 450px;
}

@media only screen and (min-width: 600px) and (max-width: 1000px) {
	#mm li img {
		width: 100%;
	}
	.LLi {
		width: 50%;
	}
	#mm ul {
		width: 50%;
	}
}

@media only screen and (max-width: 599px) {
	#mm li img {
		width: 100%;
	}
	.LLi {
		width: 100%;
	}
	#mm ul {
		width: 100%;
	}
}
/* 배송지 관리 > 새 배송지 추가 */
.btn_add_shipping {
	position: absolute;
	top: -42px;
	right: 0;
	height: 30px;
	padding: 0 10px;
	line-height: 28px;
	color: #fff;
	border: 1px solid #979797;
	background: #979797;
	text-align: center;
}

.btn_add_shipping:hover {
	border: 1px solid #626262;
	background: #626262;
}
/* 계정 연결 정보 */
.site_info_box {
	margin: 40px 0 0 0;
}

.site_sns_info {
	padding: 30px 20px 30px 20px;
	border: 1px solid #dadada;
}

.site_sns_info .site_sns_list {
	
}

.site_sns_info .site_sns_list h4 {
	display: inline-block;
	margin: 0 14px 0 0;
	color: #777777;
}

.site_sns_info .site_sns_list em {
	display: block;
	padding: 0 0 15px 0;
}

.site_sns_info .site_sns_list span {
	display: inline-block;
	margin: 0 0 0 0;
	vertical-align: middle;
}

.site_sns_info .site_sns_list a {
	display: inline-block;
	margin: 0 6px 10px 0;
	vertical-align: top;
	line-height: 1;
}

.site_sns_info .site_sns_list a>span {
	display: block;
	margin: 0 0 0 0;
	font-size: 13px;
}

.site_sns_info .site_sns_list img {
	margin: 0 0 0 0;
}

.site_sns_info .site_sns_list .my_facebook {
	color: #3b5998;
}

.site_sns_info .site_sns_list .my_payco {
	color: #fa4a4a;
}

.site_sns_info .site_sns_list .my_naver {
	color: #2db400;
}

.site_sns_info .site_sns_list .my_kakao {
	color: #381e1f;
}

.site_sns_info .site_sns_list_disconnect span {
	display: inline-block;
	margin: 0 6px 0 0;
	vertical-align: middle;
}

.site_sns_info .site_sns_list_disconnect a {
	display: inline-block;
	width: 225px;
	height: 42px;
	margin: 0 6px 0 0;
	border: 1px solid #cfcfcf;
	background: #fafafa;
	text-align: center;
	vertical-align: middle;
	line-height: 1;
}

.site_sns_info .site_sns_list_disconnect a>span {
	display: block;
	margin: 14px 0 0 0;
	font-size: 13px;
}

.site_sns_info .site_sns_list_disconnect img {
	margin: 0 8px 0 0;
}
/* 약관동의현황 */
.my_page .join_agreement_cont {
	margin: 40px 0 0 0;
}

.my_page .join_agreement_cont h3 {
	margin: 0 0 10px 0;
}

.mypage_zone_tit {
	margin: 0 0 0 0;
	padding: 0 0 10px 0;
	font-size: 16px;
}

.mypage_zone_tit h3 {
	display: inline-block;
	font-size: 16px;
}

.mypage_zone_tit h4 {
	font-size: 16px;
}

.mypage_zone_tit span {
	padding: 0 0 0 5px;
	color: #777777;
	font-size: 12px;
	font-weight: normal;
}

.mypage_shipping .mypage_zone_tit h3 {
	display: inline-block;
}

.mypage_shipping .mypage_zone_tit .pick_list_num {
	display: inline-block;
}

.pick_list_num {
	display: block;
	padding: 20px 0 10px 0;
	font-size: 14px;
}

.pick_list_num strong {
	color: #181818;
}

.pick_list_day {
	display: block;
	padding: 20px 0 10px 0;
	font-size: 14px;
}

/* ------------- 테이블 공통(텍스트 센터 기본) ------------- */
.mypage_table_type {
	
}

.mypage_table_type .td_left {
	text-align: left;
}

.mypage_table_type table {
	width: 100%;
	border: 0;
	border-spacing: 0;
	border-collapse: collapse;
	text-align: center;
}

.mypage_table_type th {
	padding: 9px 10px 10px 10px;
	border-top: 1px solid #999999;
	border-bottom: 1px solid #dbdbdb;
	background: #f7f7f7;
}

.mypage_table_type td {
	height: 31px;
	padding: 15px 10px 14px 10px;
	color: #777777;
	border-bottom: 1px solid #dbdbdb;
	/*border-left:1px dotted #ededed;*/
}

.mypage_table_type td>strong {
	color: #181818;
}

.mypage_table_type .btn_down_box {
	
}

.mypage_table_type th .form_element {
	vertical-align: middle;
}

.mypage_table_type .text_info {
	display: block;
	padding: 2px 0 2px 0;
	color: #999999;
	font-size: 11px;
}

.mypage_table_type .coupon_price {
	color: #333333;
	font-size: 14px;
}

.mypage_table_type .coupon_price b {
	padding: 0 2px 0 0;
	font-size: 16px;
}

.mypage_table_type .row_line td {
	border-bottom: 1px solid #ebebeb;
}

.mypage_table_type table td.order_day_num {
	border-right: 1px dotted #ededed;
	border-bottom: 1px solid #dbdbdb;
}

/* 날짜/주문번호 */
.mypage_table_type .btn_claim>span {
	display: inline-block;
	margin: 7px 0 0 0;
}

/* ------------- 마이페이지 > 배송지 관리 ------------- */
.mypage_shipping {
	position: relative;
}

.mypage_shipping_cont {
	position: relative;
}

.mypage_shipping_cont .pick_list_num {
	position: absolute;
	top: -50px;
	left: 92px;
	font-size: 13px;
}

.mypage_shipping_cont .mypage_table_type span {
	display: block;
}

.mypage_shipping_cont .mypage_table_type .btn_gray_list {
	margin: 5px 0 5px 0;
}

.mypage_table_type .td_phone span {
	width: 150px;
}
</style>

	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<script>
	$(document).ready(function () {
		/* 체크박스 토글 */
		$('label').click(function () {
			$(this).toggleClass("on");
		});

		/* 전체 선택 */
		$("#allAgree").click(function () {
			if ($("#allAgree").is(":checked")) {
				$("input.require").prop("checked", true);
				$("label[for='allAgree']").addClass('on');
				$("label.check_s").addClass('on');
			} else {
				$("input.require").prop("checked", false);
				$("label[for='allAgree']").removeClass('on');
				$("label.check_s").removeClass('on');
			}
		});

		/* 개별 선택 */
		$(".require").click(function () {
			var total = $("input.require").length;
			var checked = $("input.require:checked").length;

			if (total != checked) {
				$("#allAgree").prop("checked", false);
				$("label[for='allAgree']").removeClass('on');
			} else {
				$("#allAgree").prop("checked", true);
				$("label[for='allAgree']").addClass('on');
			}
		});

		/* 체크 필수 */
		$('#btnNextStep').click(function () {
			if ($("input.require").length != $("input.require:checked").length) {
				alert('체크 필수');
				return false;
			}
		});
	});
</script>

<%@include file="../common/header.jsp" %>

<!-- Content page -->
	<section class="bg0 p-t-28 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">


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
													</div> <!-- //base_info_box -->
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
      $(".js-select2").each(function(){
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
	<script src="../../js/main.js"></script>

</body>


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
</html>