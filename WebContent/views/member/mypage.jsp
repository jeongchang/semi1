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
	<div style="padding-top:150px;">
	
	
	
    <!--######## End Header Area ########-->
    
    
<%
	ArrayList<Pet> plist=null;

	//관리자 권한이라면 굳이 펫을 체크할 필요가 없다.
	if(m!=null && m.getUserRoles() != 777 && m.getUserRoles()>9){
		plist= (ArrayList<Pet>)session.getAttribute("plist");
		Pet p = plist.get(0);
	}
		
%>



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
        
        $(function(){
			$("#listArea td").click(function(){
				var bno = $(this).parent().find("input").val();
				location.href="<%=request.getContextPath()%>/selectOne.bo?bno=" + bno;
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
        <ul class="tabs">
            <li class="active" rel="tab1">회원 정보 관리</li>
            <li rel="tab2">호텔 예약 조회</li>
            <li rel="tab3">1:1 문의 내역</li>
            <li rel="tab4">펫스타그램</li>
            <li rel="tab5">펫신져</li>
            <li rel="tab6">펫튜브</li>
        </ul>
        <div class="tab_container">
            <div id="tab1" class="tab_content"><br>
            
                <div class="map_text">
                    
                    <div class="progress-table-wrap" style="text-align: center;">
                        <form action="/PETNER/pDelete.me" method="post" id="delForm">
                            <div class="mt-10">
                                <input type="text" name="USER_EMAIL"  
                                required class="single-input" disabled value="<%=m.getUserEmail() %>"
                                    style="background: lightgray;">
                            </div>
                            <div class="mt-10">
                                <input type="text" name="USER_NAME"
                                required class="single-input" disabled value="<%=m.getUserName() %>">
                            </div>
                            
                            <div class="mt-10">
                                <input type="text" name="USER_PHONE"  required class="single-input"
                                disabled value="<%=m.getUserPhone() %>">
                            </div>

							<br>
							<br>

                            <!--기본적으로 등록된 펫이 없다는 메세지가 나온다.-->
                            
                            <% if(m.getUserRoles() < 10 ) { %>
                            
                            	<h1>등록된 펫이 없습니다. </h1>
                             
                            <%} else { %> <!-- if문 m.getUserRoles  닫기 -->


                                
                                <div class="container"> 
                                	<div class="row"> 
                                		<% for(Pet p : plist) { %>
                                		<div>
                                		<div class="card s-3" style="width: 250px; border:1px solid black;"> 
                                			<img src="/PETNER/resources/img/member/pet/<%=p.getPetPic() %>" 
                                						alt="프로필 사진" class="card-img-top" style="height:248px"> 
                                			<div class="card-body"> <h4 class="card-title"><%=p.getPetName() %></h4> 
												<div>
	                                				<a href="#" style="background: gray;" class="genric-btn success" onclick="topPet('<%= p.getPetName()%>');">대표 설정</a>
													<br><br>
													<a href="#" style="background: lightgray;" class="genric-btn success" onclick="updatePet('<%= p.getPetName()%>')">수정</a>
													<a href="#" style="background: red;" class="genric-btn success" onclick="deletePet('<%= p.getPetName()%>')">삭제</a>
												</div>
                                			</div> 
                               			</div>
                               			</div>
                               			<% } %> <!--  for문 --> 
                           			</div>
								</div>
                                
                                
                                    
                            <%} %> <!-- if else문 닫기 -->
                               
                           	
                            
                            <!-- 기능 버튼들 -->
                            
                            <br>
                            <div>
	                            <a href="memberInfo.jsp" style="background: gray;" class="genric-btn success">수정</a>
	                            <a href="/PETNER/views/member/PET/InsertPet.jsp" style="background: gray;" class="genric-btn danger">PET 등록</a>
                            </div>
                            <br>
                            
                            <a href="#" onclick="deleteMember();" style="background: red;" class="genric-btn danger">회원 탈퇴</a>
                        </form>
                    </div>



                </div>

            </div>
            <!-- #tab1 -->
            <div id="tab2" class="tab_content">
                <p class="text1">예약 관리 </p>
                
                <!--######## End post-content Area ########-->
            </div>
            <!-- #tab2 -->

            <div id="tab3" class="tab_content">
                <p class="text1">1:1 문의</p>
                
            </div>
            <!-- #tab3 -->

            <div id="tab4" class="tab_content">
                <p class="text1">펫스타그램</p>
                
            </div>
            <!-- #tab4 -->

            <div id="tab5" class="tab_content">
                <p class="text1">펫신져</p>
                
            </div>
            <!-- #tab5 -->

            <div id="tab6" class="tab_content">
                <p class="text1">펫튜브</p>
                
            </div>
            <!-- #tab6 -->
        </div>
        <!-- .tab_container -->
    </div>
    <!-- #container -->
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