<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  회원 정보 변경 페이지 -->

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
		<title>정보 변경</title>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" href="/PETNER/resources/css/member/main_hyon.css" type="text/css">
		
	</head>
	
	
	<body>
			<%@ include file="../common/header.jsp" %> 
			
			<!--  메뉴바랑 겹치는 부분 제거 -->
	<div style="padding-top:150px;">
	
    <!--######## End Header Area ########-->


    <!--tap-->
    <script>

        $(function () {

            $(".tab_content").hide();
            $(".tab_content:first").show();

            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active").css("color", "#333");
                //$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
                $(this).addClass("active").css("color", "green");
                $(".tab_content").hide()
                var activeTab = $(this).attr("rel");
                $("#" + activeTab).fadeIn()
            });
        });

    </script>
    <!--tap end-->


    <!-- Start Align Area -->
    <section class="whole-wrap">
        <div class="container">


 <!--start tab area-->
    <div id="t_container">
        <div class="tab_container">
            <div id="tab1" class="tab_content"><br>
            
                <div class="map_text">
                    
                    <div class="progress-table-wrap" style="text-align: center;">
                        <form action="/PETNER/pUpdate.me" method="post" id="updateForm">
                            <div class="mt-10">
                                <input type="text" name="USER_EMAIL" required class="single-input" disabled
                                    style="background: lightgray;" value="<%=m.getUserEmail() %>">
                            </div>
                            <div class="mt-10">
                                <input type="text" name="USER_NAME" required class="single-input" value="<%=m.getUserName() %>">
                            </div>
                            
                            <div class="mt-10">
                                <input type="phone" name="USER_PHONE" required class="single-input"value="<%=m.getUserPhone() %>">
                            </div>
                            
                            <div class="mt-10">
                                <input type="password" name="USER_PWD" required class="single-input" placeholder="기존 비밀번호"  required>
                            </div>
                            <div class="mt-10">
                                <input type="password" name="USER_NPWD1" required class="single-input" placeholder="새로운 비밀번호">
                            </div>
                            <div class="mt-10">
                                <input type="password" name="USER_NPWD2" required class="single-input" placeholder="새로운 비밀번호 확인">
                            </div>
                            
                            
                            <br>
                            <a href="#" onclick="Pupdate();"  style="background: lightgray;" class="genric-btn success">수정완료</a>
                            <a href="mypage.jsp" style="background: lightgray;" class="genric-btn danger">취소</a>
                        </form>
                    </div>
                </div>
        </div>
        <!-- .tab_container -->
    </div>
    <!-- #container -->
</div>
	
	<script>
		function Pupdate(){
			$('#updateForm').submit();
		}
	</script>



    <!--######## start footer Area ########-->
			<%@ include file="../common/footer.jsp" %>
    <!--######## End footer Area ########-->



</body>

</html>