var $closeSide = $('#closeSide'),
      $openSide = $('#openSide'),
      $mySidenav = $('#mySidenav'),
      $parallax = $('#parallax'),
      $board = $('#board'),
      $vcenterLi = $('.vcenter li'),
      $vcenterA = $('.vcenter a'),
      $paginationA = $('.pagination a'),
      $postListA = $('.postList a');
   
   // 헤더 애니메이션 이벤트 추가
   $vcenterLi.on('mouseenter',function(){
      $(this).addClass('animated pulse');
   }).on('mouseleave',function(){
      $(this).removeClass('animated pulse');
   });
   
   // 슬라이드 오픈
   $openSide.on('click',function(){
      $mySidenav.css('width','15%');
   });

   // 슬라이드 클로즈
   $closeSide.on('click',function(){
      $mySidenav.css('width','0%');
   });
   
   // 헤더 메뉴 클릭시 폰트 검정색으로 변경
   $vcenterA.on('click', function(e) {
      if ($(this).attr('class') != 'choice') {
         $(this).parents().find('.choice').removeClass('choice')
         $(this).addClass('choice')
      }
   });
   
   // 헤더 메뉴 마우스를 갖다대면 폰트 검정색으로 변경
   $vcenterA.on('mouseenter', function() {
      $(this).css('color','black')
   }).on('mouseleave', function() {
      $(this).css('color','gray')
   });
   
   // post 전송을 위한 펑션
   function sendPost(path, params) {
      var $f = $('<form></form>').attr({
         action : path,
         method : 'post'
      });
      for (var key in params) {
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
   
   // 페이징, 디테일 펑션
   var postEvent = {
         sendPost : function (params) {
            sendPost(params.path, params.parms)
         }, // sendPost
         paging : function($this, previous, end) {
            if ($this.is('#previousPage')) {
               param = previous;
            } else if ($this.is('#nextPage')) {
               param = end;
            } else {
               param = $this.text();
            }
            return postEvent.sendPost({path:'tradePost', parms:{'pageNum' : param}})
         }, // paging
         
         findPostDetail : function($this) {
            param = $this.parents().children('td:first').text(); 
            return postEvent.sendPost({path:'findTradePostListByNo',parms:{'tradeNo':param}})
         } // findPostDetail
   } // postEvent
