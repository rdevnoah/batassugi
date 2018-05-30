var $closeSide = $('#closeSide'), 
	$openSide = $('#openSide'), 
	$mySidenav = $('#mySidenav'), 
	$parallax = $('#parallax'), 
	$board = $('#board'), 
	$vcenterLi = $('.vcenter li'), 
	$vcenterA = $('.vcenter a'), 
	$paginationA = $('.pagination a'), 
	$paginationB = $('.pagination1 a'), 
	$postListA = $('.postList a'), 
	$like = $('.like a'), 
	$rentForm = $('#rentForm'), 
	$rent = $('.rent .rentBtn'), 
	$rentPaginationA = $('.rentPagination a'),
	$cropsList = $('.cropsList'),
	$searchCategory = $('#searchCategory'),
	$searchForm = $('#searchForm'),
	$fail = $('body').find('#fail').text(),
	$success = $('body').find('#success').text();
	
	
// 대여신청 성공시 RedirectAttribute 객체를 받아서 메세지 출력
$success !== '' && BootstrapDialog.alert($success)
$fail !== '' && BootstrapDialog.alert($fail).setType('danger')
// 헤더 애니메이션 이벤트 추가
$vcenterLi.on('mouseenter', function() {
	$(this).addClass('animated pulse');
}).on('mouseleave', function() {
	$(this).removeClass('animated pulse');
});

// 슬라이드 오픈
$openSide.on('click', function() {
	$mySidenav.css('width', '15%');
});

// 슬라이드 클로즈
$closeSide.on('click', function() {
	$mySidenav.css('width', '0%');
});

$vcenterA.on('click', function(e) {
	if ($(this).attr('class') != 'choice') {
		$(this).parents().find('.choice').removeClass('choice')
		$(this).addClass('choice')
	}
});

$vcenterA.on('mouseenter', function() {
	$(this).css('color', 'black')
}).on('mouseleave', function() {
	$(this).css('color', 'gray')
});

function sendPost(path, params) {
	var $f = $('<form></form>').attr({
		action : path,
		method : 'post'
	});
	for ( var key in params) {
		var value = params[key];
		var $objs = $('<input type="hidden"/>').attr({
			name : key,
			value : value
		});
		$f.append($objs);
	}
	$('body').append($f);
	$f.submit();
} // sendPost(path, params)

// 페이징, 디테일 펑션, 검색 페이징
var tradeList = {
		   paging : function(target, previous, end, path, keyword, searchType) {
		      var param;
		      if (target.is('#previousPage')) {
		         param = previous;
		      } else if (target.is('#nextPage')) {
		         param = end;
		      } else {
		         param = target.text();
		      }
		      sendPost(path, {
		         'pageNum' : param,
		         'keyword' : keyword,
		         'searchType' : searchType
		      })
		   }, // paging
		   detail : function(target, path, params) {
		      sendPost(path, params)
		   } // detail
		} // rentList


/**
 * 대여신청 상세정보 뷰 출력 event
 * 
 * @author "SL SangUk Lee"
 * @returns
 */
var rentList = {
	paging : function(target, previous, end, path, keyword, category) {
		var param;
		if (target.is('#previousPage')) {
			param = previous;
		} else if (target.is('#nextPage')) {
			param = end;
		} else {
			param = target.text();
		}
		sendPost(path, {
			'pageNum' : param,
			'keyword' : keyword,
			'category' : category
		})
	}, // paging
	detail : function(target, path, params) {
		sendPost(path, params)
	} // detail
} // rentList

$rentPaginationA.on('click',function() {
	var $startPageOfPageGroup = $('body').find('#startPageOfPageGroup').text()
		,$endPageOfPageGroup = $('body').find('#endPageOfPageGroup').text()
		,$searchVo = $('body').find('#searchVo').text()
		,$keyword = $('body').find('#keyword').text()
		,$category = $('body').find('#category').text()
	rentList.paging($(this), $startPageOfPageGroup, $endPageOfPageGroup, $searchVo, $keyword, $category)
});

/**
 * 대여신청을 위한 event
 * 
 * @author "SL SangUk Lee"
 * @returns
 */
$rentForm.on('submit', function() {
	var flag;
	BootstrapDialog.confirm({
		message : '농지 대여를 신청을 하시겠습니까?',
		onhidden : function() {
			// flag가 true면 onsubmit속성을 return true;으로 바꾸고 submit(); 
			flag == 'true' ? $rentForm.attr('onsubmit','return true;').submit() : '';
		},
		callback : function(result) {
			flag = [ result == true ? 'true' : '' ]; // 확인버튼 클릭시 true를 반환, 취소버튼 클릭시 false를 반환해서 flag에 담음.
		}
	});
});

	$vcenterLi.on('mouseenter', function() {
		$(this).addClass('animated pulse');
	}).on('mouseleave', function() {
		$(this).removeClass('animated pulse');
	});

	$openSide.on('click', function() {
		$mySidenav.css('width', '15%');
	});

	$vcenterA.on('mouseenter', function() {
		$(this).css('color', 'black')
	}).on('mouseleave', function() {
		$(this).css('color', 'gray')
	});
	

	// 대여신청하기 버튼 이벤트 상세정보페이지로 이동
	$rent.on('click', function() {
		var $recruitNo = $(this).parents('.content').find('span:nth(0)').text(), // 대여신청번호.
			$thisClass = $(this).attr('class'), // 대여신청하기 버튼
			path = 'findRentDetailByRecruitNo', // 전송할 url주소
			param = {'recruitNo' : $recruitNo}; // 전송할 파라미터 객체
		// 대여신청하기버튼이 활성화가 되어있으면, detailView로 이동, 버튼이 비활성화가 되어있으면 모달메세지 출력
		$thisClass != "btn btn-primary btn-block disabled" ?	
				rentList.detail($(this), path, param) : BootstrapDialog.alert("대여불가!").setType('danger')
	});

	function sendPost(path, params) {
		var $f = $('<form></form>').attr({
			action : path,
			method : 'post'
		});
		for ( var key in params) {
			var value = params[key];
			var $objs = $('<input type="hidden"/>').attr({
				name : key,
				value : value
			});
			$f.append($objs);
		}
		$('body').append($f);
		$f.submit();
	} // sendPost(path, params)

	function searchList(searchData) {
		var array = [];
		$.ajax({
			type : "post",
			url : "/batassugi/"+searchData,
			success : function(data) {
				$.each(data, function(i, result) {
					array.push(result)
				})
			},error : function(request, status, error) {
				BootstrapDialog.alert("Code:" + request.status + "\n" + "Message:"
						+ request.responseText + "\n" + "Error:" + error);
			} // error
		}); //ajax
		return array
	}
	
	$searchCategory.on('change',function() {
		var $this = $(this).val()
		$("#searchKeyword").autocomplete({
			source: $this != "" ? $this == 'crops' ? searchList('getCropsList') : searchList('getFarmAddressList') : [""],
			focus: function(event, ui) {
				$("#searchKeyword").val(ui.item.label);
				},
			select: function(event, ui) {
	            console.log(ui.item);
	        },
		});
	})
	
	$searchForm.on('submit',function(){
		var $category = $(this).children('.form-group:nth(0)').children('#searchCategory').val();
		var $keyword = $(this).children('.form-group:nth(1)').children('#searchKeyword').val().replace(/\s/g, '');
		sendPost('findRentListByKeyword', {'keyword':$keyword,'category':$category})
	})