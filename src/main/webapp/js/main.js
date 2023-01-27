

(function($) {
	"use strict";



	/*[ Load page ]
	===========================================================*/
	$(".animsition").animsition({
		inClass: 'fade-in',
		outClass: 'fade-out',
		inDuration: 1500,
		outDuration: 800,
		linkElement: '.animsition-link',
		loading: true,
		loadingParentElement: 'html',
		loadingClass: 'animsition-loading-1',
		loadingInner: '<div class="loader05"></div>',
		timeout: false,
		timeoutCountdown: 5000,
		onLoadEvent: true,
		browser: ['animation-duration', '-webkit-animation-duration'],
		overlay: false,
		overlayClass: 'animsition-overlay-slide',
		overlayParentElement: 'html',
		transition: function(url) { window.location.href = url; }
	});

	/*[ Back to top ]
	===========================================================*/
	var windowH = $(window).height() / 2;

	$(window).on('scroll', function() {
		if ($(this).scrollTop() > windowH) {
			$("#myBtn").css('display', 'flex');
		} else {
			$("#myBtn").css('display', 'none');
		}
	});

	$('#myBtn').on("click", function() {
		$('html, body').animate({ scrollTop: 0 }, 300);
	});

	/*==================================================================
	[ Fixed Header ]*/
	var headerDesktop = $('.container-menu-desktop');
	var wrapMenu = $('.wrap-menu-desktop');
	var wrapMainMenu = $('.wrap-main-menu-desktop');

	if ($('.top-bar').length > 0) {
		var posMainWrapHeader = $('.top-bar').height() + $('.logo-container-desktop').height();
		var posWrapHeader = $('.top-bar').height();
		//메뉴바 이동 수정
	}
	else {
		var posWrapHeader = 0;
		var posMainWrapHeader = 0;
	}


	if ($(window).scrollTop() > posWrapHeader) {
		$(headerDesktop).addClass('fix-menu-desktop');
		$(wrapMenu).css('top', 0);
	}
	else {
		$(headerDesktop).removeClass('fix-menu-desktop');
		$(wrapMainMenu).css('top', posMainWrapHeader - $(this).scrollTop());
		$(wrapMenu).css('top', posWrapHeader - $(this).scrollTop());
	}

	$(window).on('scroll', function() {
		if ($(this).scrollTop() > posWrapHeader) {
			$(headerDesktop).addClass('fix-menu-desktop');
			$(wrapMenu).css('top', 0);
			$(wrapMainMenu).css('top', 0);
		}
		else {
			$(headerDesktop).removeClass('fix-menu-desktop');
			$(wrapMenu).css('top', posWrapHeader - $(this).scrollTop());
			$(wrapMainMenu).css('top', posMainWrapHeader - $(this).scrollTop());
		}
	});


	/*==================================================================
	[ Menu mobile ]*/
	$('.btn-show-menu-mobile').on('click', function() {
		$(this).toggleClass('is-active');
		$('.menu-mobile').slideToggle();
	});

	var arrowMainMenu = $('.arrow-main-menu-m');

	for (var i = 0; i < arrowMainMenu.length; i++) {
		$(arrowMainMenu[i]).on('click', function() {
			$(this).parent().find('.sub-menu-m').slideToggle();
			$(this).toggleClass('turn-arrow-main-menu-m');
		})
	}

	$(window).resize(function() {
		if ($(window).width() >= 992) {
			if ($('.menu-mobile').css('display') == 'block') {
				$('.menu-mobile').css('display', 'none');
				$('.btn-show-menu-mobile').toggleClass('is-active');
			}

			$('.sub-menu-m').each(function() {
				if ($(this).css('display') == 'block') {
					console.log('hello');
					$(this).css('display', 'none');
					$(arrowMainMenu).removeClass('turn-arrow-main-menu-m');
				}
			});

		}
	});


	/*==================================================================
	[ Show / hide modal search ]*/
	$('.js-show-modal-search').on('click', function() {
		$('.modal-search-header').addClass('show-modal-search');
		$(this).css('opacity', '0');
	});

	$('.js-hide-modal-search').on('click', function() {
		$('.modal-search-header').removeClass('show-modal-search');
		$('.js-show-modal-search').css('opacity', '1');
	});

	$('.container-search-header').on('click', function(e) {
		e.stopPropagation();
	});


	/*==================================================================
	[ Isotope ]*/
	var $topeContainer = $('.isotope-grid');
	var $filter = $('.filter-tope-group');

	// filter items on button click
	$filter.each(function() {
		$filter.on('click', 'button', function() {
			var filterValue = $(this).attr('data-filter');
			$topeContainer.isotope({ filter: filterValue });
		});

	});

	// init Isotope
	$(window).on('load', function() {
		var $grid = $topeContainer.each(function() {
			$(this).isotope({
				itemSelector: '.isotope-item',
				layoutMode: 'fitRows',
				percentPosition: true,
				animationEngine: 'best-available',
				fitRows: {
					gutter: '.gutter-sizer'
				},
				masonry: {
					columnWidth: '.isotope-item'
				}
			});
		});
	});

	var isotopeButton = $('.filter-tope-group button');

	$(isotopeButton).each(function() {
		$(this).on('click', function() {
			for (var i = 0; i < isotopeButton.length; i++) {
				$(isotopeButton[i]).removeClass('how-active1');
			}

			$(this).addClass('how-active1');
		});
	});

	/*==================================================================
	[ Filter / Search product ]*/
	$('.js-show-filter').on('click', function() {
		$(this).toggleClass('show-filter');
		$('.panel-filter').slideToggle(400);

		if ($('.js-show-search').hasClass('show-search')) {
			$('.js-show-search').removeClass('show-search');
			$('.panel-search').slideUp(400);
		}
	});

	$('.js-show-search').on('click', function() {
		$(this).toggleClass('show-search');
		$('.panel-search').slideToggle(400);

		if ($('.js-show-filter').hasClass('show-filter')) {
			$('.js-show-filter').removeClass('show-filter');
			$('.panel-filter').slideUp(400);
		}
	});




	/*==================================================================
	[ Cart ]*/
	$('.js-show-search-slide').on('click', function() {
		$('.js-panel-cart').addClass('show-header-cart');
	});

	$('.js-hide-search-slide').on('click', function() {
		$('.js-panel-cart').removeClass('show-header-cart');
	});

	/*==================================================================
	[ Cart ]*/
	$('.js-show-sidebar').on('click', function() {
		$('.js-sidebar').addClass('show-sidebar');
	});

	$('.js-hide-sidebar').on('click', function() {
		$('.js-sidebar').removeClass('show-sidebar');
	});

	/*==================================================================
	[ +/- num product ]*/
	$('.btn-num-product-down').on('click', function() {
		var numProduct = Number($(this).next().val());
		if (numProduct == 1) {
			alert('1개 이상만 구매할 수 있습니다');
			return;
		}
		if (numProduct > 1) $(this).next().val(numProduct - 1);
		var deliveryFee = parseInt($('#deliveryFee').text().replace(',', ''));
		var price = parseInt($('#price').text().replace(',', ''));
		var totalPrice = Number($(this).next().val()) * price + deliveryFee;
		totalPrice = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		console.log(Number(totalPrice));
		$('#totalPrice').text(totalPrice);

	});

	$('.btn-num-product-up').on('click', function() {
		var numProduct = Number($(this).prev().val());
		if (numProduct == 10) {
			alert('최대 10개까지만 주문가능합니다.');
			return;
		}
		$(this).prev().val(numProduct + 1);
		var deliveryFee = parseInt($('#deliveryFee').text().replace(',', ''));
		var price = parseInt($('#price').text().replace(',', ''));
		var totalPrice = Number($(this).prev().val()) * price + deliveryFee;
		totalPrice = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		$('#totalPrice').text(totalPrice);
	});


	$('.btn-num-cart-up').each(function() {
		$(this).click(function() {
			var current = $(this).attr('id');
			var numProduct = Number($(this).prev().val());
			if (numProduct == 10) {
				alert('최대 10개까지만 주문가능합니다.');
				return;
			}
			$(this).prev().val(numProduct + 1);

			var price = parseInt($('#price' + current).text().replace(',', ''));
			var salePrice = parseInt($('#salePrice' + current).text().replace(',', ''));
			var totalPrice = (price - salePrice) * Number($(this).prev().val());
			totalPrice = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			$('#totalPrice' + current).text(totalPrice);
		});
	});

	$('.btn-num-cart-down').each(function() {
		$(this).click(function() {
			var current = $(this).attr('id');
			var numProduct = Number($(this).next().val());

			console.log('현재 : ' + $(this).next().val());

			if (numProduct == 1) {
				alert('1개 이상만 구매할 수 있습니다');
				return;
			}

			$(this).next().val(numProduct - 1);
			console.log('바뀐 후 : ' + $(this).next().val());

			var price = parseInt($('#price' + current).text().replace(',', ''));
			var salePrice = parseInt($('#salePrice' + current).text().replace(',', ''));
			var totalPrice = (price - salePrice) * Number($(this).next().val());
			totalPrice = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			$('#totalPrice' + current).text(totalPrice);
		});
	});



	// 장바구니 수량2 
	$('.btn-num-cart-up2').on('click', function() {

		var numProduct = Number($(this).prev().val());
		if (numProduct == 10) {
			alert('최대 10개까지만 주문가능합니다.');
			return;
		}
		$(this).prev().val(numProduct + 1);
		var salePrice = parseInt($('#salePrice2').text().replace(',', ''));
		var price = parseInt($('#price2').text().replace(',', ''));
		var totalPrice = (price) * Number($(this).prev().val());
		var totalPrice2 = parseInt($('#totalPrice').text().replace(',', ''));
		var totalSaleprice = ((numProduct + 1) * salePrice);
		var totalSaleprice2 = $('#totalSaleprice').text();
		var totalSale = (Number(totalSaleprice) + Number(totalSaleprice2));
		var total = Number(totalPrice) + Number(totalPrice2);
		var totalPrice3 = (Number(total) - Number(totalSale) + 2500);

		console.log(totalSale);
		total = total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		totalPrice = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		totalSale = totalSale.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		totalPrice3 = totalPrice3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		$('#totalPrice2').text(totalPrice);
		$('#totalPrice3').text(totalPrice3);
		$('#totalSaleprice2').text(totalSaleprice);
		$('#totalSale').text(totalSale);
		$('#sumPrice').text(total);

	});


	$('.btn-num-cart-down2').on('click', function() {

		var numProduct = Number($(this).next().val());
		if (numProduct == 1) {
			alert('1개 이상만 구매할 수 있습니다');
			return;
		}
		if (numProduct > 1) $(this).next().val(numProduct - 1);
		var salePrice = parseInt($('#salePrice2').text().replace(',', ''));
		var price = parseInt($('#price2').text().replace(',', ''));
		var totalPrice = Number($(this).next().val()) * price;
		var totalPrice2 = parseInt($('#totalPrice').text().replace(',', ''));
		var totalSaleprice = ((numProduct - 1) * salePrice);
		var totalSaleprice2 = $('#totalSaleprice').text();
		var totalSale = (Number(totalSaleprice) + Number(totalSaleprice2));
		var total = Number(totalPrice) + Number(totalPrice2);
		var totalPrice3 = (Number(total) - Number(totalSale) + 2500);
		//var totalSaleprice3 = Number(totalSaleprice) + Number(totalSaleprice2);


		console.log(total);
		total = total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		totalPrice = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		totalSale = totalSale.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		totalPrice3 = totalPrice3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		$('#totalPrice2').text(totalPrice);
		$('#totalPrice3').text(totalPrice3);
		$('#totalSaleprice2').text(totalSaleprice);
		$('#totalSale').text(totalSale);
		$('#sumPrice').text(total);
		//$('#totalSaleprice3').text(totalSaleprice3);
	});



	/*==================================================================
	[ Rating ]*/
	$('.wrap-rating').each(function() {
		var item = $(this).find('.item-rating');
		var rated = -1;
		var input = $(this).find('input');
		$(input).val(0);

		$(item).on('mouseenter', function() {
			var index = item.index(this);
			var i = 0;
			for (i = 0; i <= index; i++) {
				$(item[i]).removeClass('zmdi-star-outline');
				$(item[i]).addClass('zmdi-star');
			}

			for (var j = i; j < item.length; j++) {
				$(item[j]).addClass('zmdi-star-outline');
				$(item[j]).removeClass('zmdi-star');
			}
		});

		$(item).on('click', function() {
			var index = item.index(this);
			rated = index;
			$(input).val(index + 1);
		});

		$(this).on('mouseleave', function() {
			var i = 0;
			for (i = 0; i <= rated; i++) {
				$(item[i]).removeClass('zmdi-star-outline');
				$(item[i]).addClass('zmdi-star');
			}

			for (var j = i; j < item.length; j++) {
				$(item[j]).addClass('zmdi-star-outline');
				$(item[j]).removeClass('zmdi-star');
			}
		});
	});

	/*==================================================================
	[ Filter Click ]*/
	$('#sortbyFilter').find("a").click(function() {
		if ($(this).hasClass("tag1-active") === true) {
			$(this).removeClass("tag1-active");
			return;
		}
		//모든 class 초기화
		$('#sortbyFilter').find("a").not(this).removeClass("tag1-active");

		//선택한 탭만 class 추가
		$(this).addClass("tag1-active");
	});

	$('#priceFilter').find("a").click(function() {
		if ($(this).hasClass("tag1-active") === true) {
			$(this).removeClass("tag1-active");
			return;
		}
		//모든 class 초기화
		$('#priceFilter').find("a").not(this).removeClass("tag1-active");

		//선택한 탭만 class 추가
		$(this).addClass("tag1-active");
	});

	$('#tagsFilter').find("a").click(function() {
		if ($(this).hasClass("tag1-active") === true) {
			$(this).removeClass("tag1-active");
			return;
		}
		//모든 class 초기화
		$('#tagsFilter').find("a").not(this).removeClass("tag1-active");

		//선택한 탭만 class 추가
		$(this).addClass("tag1-active");
	});


	/*==================================================================
	[ Show modal1 ]*/
	$('.js-show-quickview').on('click', function(e) {
		e.preventDefault();
		$('.js-quickView').addClass('show-modal1');
	});

	$('.js-hide-quickView').on('click', function() {
		$('.js-quickView').removeClass('show-modal1');
	});

	$('.js-show-quickview').each(function() {
		var pNum = $(this).parent().parent().find('.js-name-b2').prop("id");
		$(this).on('click', function() {
			$.ajax({
				type: 'POST',
				url: 'quickView',
				async: false,
				dataType: 'json',
				data: {
					pNum: pNum,
				},
				success: function(data) {
					$('.pName').html(data.pName);
					$(".pImg-img").attr("src", data.pImg);
					$(".pImg-a").attr("href", data.pImg);
					$('.fixPrice').html(data.fixPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
					$('.selPrice').html(data.selPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
					$('.totalPrice').html(data.selPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
					$('.rePerson').html(data.rePerson);
					$('.reAge').html(data.reAge);
				}
			});
		});
	});


	/*======= 찜 =========*/
	$('.js-addwish-b2').on('click', function(e) {
		e.preventDefault();
	});

	$('.js-addwish-b2').each(function() {
		var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
		var pNum = $(this).parent().parent().find('.js-name-b2').prop("id");
		$(this).on('click', function() {
			console.log(pNum);
			if ($(this).hasClass('js-addedwish-b2')) {
				$.ajax({
					type: 'POST',
					url: 'dibDelete',
					data: {
						pNum: pNum
					},
					context: this,
					success: function(result) {
						if (result == 1) {
							$(this).removeClass('js-addedwish-b2');
						}
					}
				});
			} else {
				$.ajax({
					type: 'POST', //POST 방식으로 보낼래
					url: 'dibInsert',
					data: {
						pNum:pNum
					},
					context: this,
					success: function(result) {
						if (result == 1) {
							swal(nameProduct, "찜 목록에 추가되었습니다!", "success");
							$(this).addClass('js-addedwish-b2');
						} else {
							alert("찜 추가 실패. 관리자에게 문의하세요.");
						}
					}
				})
			}
		});
	});



})(jQuery);