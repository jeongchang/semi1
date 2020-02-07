<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.petner.market.model.vo.Market, java.util.*"%>
<%
	ArrayList<Market> list = (ArrayList<Market>)request.getAttribute("list");
	/* Member m = new Member(); */
%>	
	
<!DOCTYPE html>
<html>
<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Favicon-->
<link rel="shortcut icon" href="img/small_logo.jpg">
<!-- Author Meta -->
<meta name="author" content="colorlib">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>P e t n e r +</title>

<!-- Custom fonts for this template-->

</head>
<body>
	<%@ include file="/views/common/header.jsp"%>
		<div style="padding-top:150px;"></div>
	
	<hr style="margin: 0px;">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<%@ include file="/views/admin/admin_sidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">



				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<br>
					<h1 class="h3 mb-2 text-gray-800">매장 목록</h1>
					<p class="mb-4">
						<!-- DataTables is a third party plugin that is used to generate the
						demo table below. For more information about DataTables, please
						visit the <a target="_blank" href="https://datatables.net">official
							DataTables documentation</a>. -->
							매장 목록을 보여드립니다.
					</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">매장 목록</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0"> <!-- style="text-align:center;" -->
									<thead>
										<tr>
											<th width="120px">번호</th>
											<th width="300px">매장명</th>
											<th>주소</th>
											<th width="180px">전화번호</th>
											<th width="100px">타입</th>
											<th width="150px">가입일</th>
											<th width="100px">수정</th>
										</tr>
									</thead>
									<tbody>
										<!-- 이런 식으로 필요한 변수를 하나하나 집어넣어 주는게 가능합니다. -->
										<% for(Market market : list){ %> 
										<tr>
											<td><%= market.getMarketId() %></td>
											<td><%= market.getMarketName() %></td>
											<td><%= market.getMarketAddress() %></td>
											<td><%= market.getMarketTel() %></td>
											<td><%= market.getMarketType() %></td>
											<td><%= market.getEnDate() %></td>
											<td><a href="admin_market_modify.jsp"><button>수정</button></a></td>
										</tr>
										<% } %>
										

									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	</div>
	<!-- End of Page Wrapper -->
	<%@ include file="/views/common/footer.jsp"%>
	
		<%-- <script>
			$(function(){
				$("#listArea td").mouseenter(function(){
					$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
				}).mouseout(function(){
					$(this).parent().css({"background":"black"});
				}).click(function(){
					var bno = $(this).parent().find("input").val();
					location.href="<%=request.getContextPath()%>/selectOne.bo?bno=" + bno;
				});
			});
		</script> --%>
	

</body>
</html>