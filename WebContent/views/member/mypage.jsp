<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Author Meta -->
	<meta name="author" content="colorlib">
	<!-- Favicon-->
	<link rel="shortcut icon" href="/PETNER/resources/img/common/small_logo.jpg">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
		<title>My Page</title>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" href="/PETNER/resources/css/member/main_hyon.css" type="text/css">
		
	</head>
	
	
	<body>
			<%@ include file="../common/header.jsp" %> 
			
			<!--  메뉴바랑 겹치는 부분 제거 -->
	<div style="padding-top:150px;">	</div>
	

	
    <!--######## End Header Area ########-->
    
    




    <!--tap-->
    <script>

     $('document').ready(function () {
    	$('.tab_container').html('<h1>맹구 ㅋㅋㅋㅋㅋㅋ</h1><img id="m9" src="../../resources/img/member/tab/w.jpg" alt="맹구" style="max-width:100%;"> ');
		

    	$('.tab_Chat').load("tab/chat.jsp");

        $("ul.tabs li").click(function () {
        	$(".tab_content").hide();

            $("ul.tabs li").removeClass("active").css("color", "#333");
            $(this).addClass("active").css("color", "green");

            console.log($(this).attr('rel'));
            console.log($('ul.tabs li.active').attr('rel'));

            $(".tab_container").load("tab/"+$('ul.tabs li.active').attr('rel')+".jsp");

            $(".tab_content").fadeIn();

        });
    });


        //펫 정보 수정 페이지로 이동
        function updatePet(petName){
        	location.href="<%=request.getContextPath()%>/pSel.pe?petName="+petName;
        }
        
        //펫 대표 설정
        function topPet(petName){
        	location.href="/PETNER/pUpdate.pe?petName="+petName;
        }

        //펫 삭제
        function deletePet(petName){
     
        	location.href="/PETNER/pDelete.pe?petName="+petName;
        }
        
        
    </script>
    <!--tap end-->


    <!-- Start Align Area -->
    <section class="whole-wrap">
        <div class="container">




 <!--start tab area-->
    <div id="t_container">
    	<div class="container">
        <ul class="tabs">
            <li rel="tab1">회원 정보 관리</li>
            <li rel="tab2">호텔 예약 조회</li>
            <li rel="tab3">1:1 문의 내역</li>
            <li rel="tab4">펫스타그램</li>
            <li rel="tab5">펫신져</li>
            <li rel="tab6">펫튜브</li>
        </ul>
    	</div> <!-- container.tabs -->
    
    <div class="containder">
     <div class="row">      
        <div class="tab_container col-md-8" style="width:100%;">
	        	<!-- 요기에 불러옴 -->

        </div> <!-- .tab_container -->
        
        <div class="col-md-4 tab_Chat">
				<h1> 채팅창 영역</h1>
				<!-- 채팅창 영역 --> 
        </div> <!--  col md 4 -->
        </div> <!-- row -->
    </div> <!-- container.row -->
    </div><!-- #t_container -->
</div>

<script>
	function deleteMember(){
		 if (confirm("정말 탈퇴하시겠습니까??") == true){    //확인
			 $('#delForm').submit();
		 }else{   //취소
		     return false;
		 }
		 
	}//deleteMember
</script>


    <!--######## start footer Area ########-->
			<%@ include file="../common/footer.jsp" %>
    <!--######## End footer Area ########-->

</body>

</html>