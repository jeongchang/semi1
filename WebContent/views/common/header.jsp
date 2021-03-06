<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.petner.member.pet.model.vo.Pet"%>
<%@page import="com.kh.petner.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	 Member m = (Member)session.getAttribute("member"); 

%>

			<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.6.11/css/lightgallery.min.css">
		

			<link rel="stylesheet" href="/PETNER/resources/css/font-awesome.min.css">
			<link rel="stylesheet" href="/PETNER/resources/css/bootstrap.css" type="text/css">
			<link rel="stylesheet" href="/PETNER/resources/css/main.css" type="text/css">
			
			<script src="/PETNER/resources/js/vendor/jquery-3.4.1.min.js" type="text/javascript"></script>
			<script src="/PETNER/resources/js/vendor/bootstrap.min.js" type="text/javascript"></script>
			
				
		
			<style>
				.nav-menu>li>a {
				     padding-top: 30px;
				     padding-bottom: 20px;
				}
			</style>

	<!--################ Start Header Area ########-->
	<header id="header" class="fixed-top" >
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-sm-6 col-4 no-padding">
						<div class="header-top-left"  style="border-right: none;">
							<a href="">
								<i class="fa fa-phone"></i>
								02-777-7777
							</a>
						</div>
					</div>
					
					<div class="col-lg-6 col-sm-6 col-8 header-top-right no-padding">
						
						
						<% if( m == null) { %>
						<ul style="border-right: none;" id="guest">
							<li>
								| &nbsp;&nbsp; <a href='#' data-target="#modal-login" data-toggle="modal">login</a> 
								| <a style="padding-left:10px;" href="/PETNER/views/member/insertMemberForm.jsp"> Join</a>
							</li>
						</ul>
						
						
						<% }else{ %>
						<!--  로그인시에는 밑에 화면이 보임 -->
						<ul style="border-right: none;" id="loginMem">
							<li>
									<% if( m != null && m.getUserRoles() == 777) { %>
										<a href="/PETNER/views/admin/admin2.jsp">Admin Page</a> 
									<% } %>
								| 	&nbsp;&nbsp; 
									<a href='/PETNER/mpServlet.mp'  
									onClick="window.open(this.href, '', 'width=1600, height=900'); return false;">MyPage</a>
								| 	<a style="padding-left:10px;" href="/PETNER/Plogout.me"> LogOut</a>
							</li>
						</ul>
						
						<% } %>
						
						
						
						
					</div>
					
				</div>
			</div>
		</div>


		<hr>
		<div class="container main-menu">
			<div class="row align-items-center justify-content-between d-flex" >
				<div id="logo">
					<a href="/PETNER/index.jsp"><img style="width: 100px;" src="/PETNER/resources/img/common/petner_logo.jpg" alt="" title="" /></a>
				</div>
				<nav id="nav-menu-container" >
					<ul class="nav-menu">
						<li><a href="/PETNER/index.jsp" ">Home</a></li>
						<li><a href="/PETNER/views/etc/about.jsp">ABOUT</a></li>
						<li><a href="/PETNER/views/hotel/hotel_home.jsp">HOTEL</a></li>
						<li><a href="/PETNER/views/hospital/hospital_home.jsp">HOSPITAL</a>
						</li>
						<li><a href="/PETNER/views/beauty/beauty_home.jsp">BEAUTY</a></li>
						<li class="menu-has-children"><a href="/PETNER/views/board/notice.jsp">NOTICE</a>
							<ul>
								<li><a href="/PETNER/views/board/notice.jsp">NOTICE</a></li>
								<li><a href="/PETNER/views/board/petner_faq.jsp">FAQ</a></li>
								<li><a href="/PETNER/views/board/qna.jsp">Q&A</a></li>
							</ul>
						</li>
					</ul>
				</nav>
				<!--######## #nav-menu-container -->
			</div>
		</div>
	</header>
	<!--######## End Header Area ########-->
	
	<!-- 로그인 모달 -->
		<div class="row" style="position: relative; vertical-align: middle;">
			<div class="modal" id="modal-login" tabindex="-1">
				<div class="modal-dialog" style="vertical-align: middle;">
					<div class="modal-content">
						  <div class="card-body">
							<div class="row">
							  <div class="col-md-12">
									<div class="">
									  <div class="text-center ">
										<h1 class="h4 text-gray-900 mb-4">LOGIN</h1>
									  </div>
	
										<div class="modal-body" style="text-align: center;">
											<form class="user" id="loginForm" method="post" action="/PETNER/Plogin.me">
												<div class="form-group">
												  <input type="email" class="form-control form-control-user" name="userEmail" 
												  aria-describedby="emailHelp" placeholder="이메일을 입력해주세요.">
												</div>
												<div class="form-group">
												  <input type="password" class="form-control form-control-user" name="userPwd" 
												  placeholder="비밀번호를 입력해주세요.">
												</div>
												<div class="form-group">
												  <div class="custom-control custom-checkbox small">
													<input type="checkbox" class="custom-control-input" id="customCheck">
													<label class="custom-control-label" for="customCheck">이메일 저장</label>
												  </div>
												</div>
												<a href="#" onclick="Plogin();"  class="btn btn-primary btn-user btn-block" style="background:#008000">
												  Login
												</a>
											</form>
											
											  <hr>
											  
											  <div class="text-center">
												  <br>
												  
												  
												  
												  
												  
												  
												  <!-- 비번 찾기랑 회원가입하기버튼 수정해야함  -->
													<!-- 일단은 안보이게해놈 -->



												<!-- <a href="forgot-password.html" style="padding-right: 20px;">비밀번호 찾기</a>  
												<a href="register.html" style="padding-left: 20px;">회원가입</a> -->
											  </div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		<div class="modal fade" id="modal-login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        ...
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>

	<script>
		//로그인 서블릿으로 보내는 함수
		function Plogin(){	
			$('#loginForm').submit();
		}


		//엔터로 로그인 하자.
		$('#loginForm').keydown(function(event){
			if(event.which == 13){
				$('#loginForm').submit();
				return false; //예외적인 상황을 위해 확실히 종료.
			}
		});
	</script>

