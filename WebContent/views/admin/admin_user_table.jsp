<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


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
			<div id="content"></div>

			<!-- Begin Page Content -->
			<div class="container-fluid">

				<!-- Page Heading -->
				<br>
				<h1 class="h3 mb-2 text-gray-800">회원 관리</h1>
				<p class="mb-4">
					DataTables is a third party plugin that is used to generate the
					demo table below. For more information about DataTables, please
					visit the <a target="_blank" href="https://datatables.net">official
						DataTables documentation</a>.
				</p>

				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">DataTables
							Example</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th style="width: 125px;">회원명</th>
										<th>주소</th>
										<th>전화번호</th>
										<th>타입</th>
										<th style="width: 250px;">예약여부</th>
										<th>가입일</th>
										<th style="width: 180px;">수정/삭제?</th>
									</tr>
								</thead>
								<!-- <tfoot>
                    <tr>
                      <th>상호명</th>
                      <th>주소</th>
                      <th>전화번호</th>
                      <th>기타 필요한</th>
                      <th>정보를 넣자</th>
                      <th>수정/삭제?</th>
                    </tr>
                  </tfoot> -->
								<tbody>
									<tr>
										<!-- 임시 데이터 이걸로 나중에 DB연동해서 자동으로 들어가게 만들 수 있나????-->
										<td>유재셕</td>
										<td>서울시 영등포구 여의도동</td>
										<td>02-2202-22##</td>
										<td>개</td>
										<td><a href="">예약번호 00001421</a></td>
										<td>2011/04/25</td>
										<td><a href="admin_user_modify.jsp"><button>수정</button></a></td>
										<!-- 버튼을 누르면 정보관리로 넘어가게 하자 -->
									</tr>
									<tr>
										<!-- 임시 데이터 이걸로 나중에 DB연동해서 자동으로 들어가게 만들 수 있나????-->
										<td>박명스</td>
										<td>지옥</td>
										<td>02-2202-22##</td>
										<td>삵쾡이</td>
										<td><a href="">예약번호 00004444</a></td>
										<td>2014/04/04</td>
										<td><a href="admin_user_modify.jsp"><button>수정</button></a></td>
										<!-- 버튼을 누르면 정보관리로 넘어가게 하자 -->
									</tr>
									<tr>
										<!-- 임시 데이터 이걸로 나중에 DB연동해서 자동으로 들어가게 만들 수 있나????-->
										<td>정헝돈</td>
										<td>개화동</td>
										<td>02-2202-22##</td>
										<td>돼지</td>
										<td>NONE</td>
										<td>2011/04/25</td>
										<td><a href="admin_user_modify.jsp"><button>수정</button></a></td>
										<!-- 버튼을 누르면 정보관리로 넘어가게 하자 -->
									</tr>
									<tr>
										<!-- 임시 데이터 이걸로 나중에 DB연동해서 자동으로 들어가게 만들 수 있나????-->
										<td>유재셕</td>
										<td>서울시 영등포구 여의도동</td>
										<td>02-2202-22##</td>
										<td>개</td>
										<td><a href="">예약번호 00001421</a></td>
										<td>2011/04/25</td>
										<td><a href="admin_user_modify.jsp"><button>수정</button></a></td>
										<!-- 버튼을 누르면 정보관리로 넘어가게 하자 -->
									</tr>
									<tr>
										<!-- 임시 데이터 이걸로 나중에 DB연동해서 자동으로 들어가게 만들 수 있나????-->
										<td>유재셕</td>
										<td>서울시 영등포구 여의도동</td>
										<td>02-2202-22##</td>
										<td>개</td>
										<td><a href="">예약번호 00001421</a></td>
										<td>2011/04/25</td>
										<td><a href="admin_user_modify.jsp"><button>수정</button></a></td>
										<!-- 버튼을 누르면 정보관리로 넘어가게 하자 -->
									</tr>
									<tr>
										<td>더미 데이터</td>
										<td>만들어서</td>
										<td>넣어야겠네요</td>
										<td>이거</td>
										<td>언제다 만들엉...</td>
										<td>2011/04/25</td>
										<td><a href="admin_user_modify.jsp"><button>수정</button></a></td>
									</tr>
									<tr>
										<td>더미 데이터</td>
										<td>만들어서</td>
										<td>넣어야겠네요</td>
										<td>이거</td>
										<td>NONE</td>
										<td>1894/07/05</td>
										<td><a href="admin_user_modify.jsp"><button>수정</button></a></td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
				</div>

			</div>
			<!-- /.container-fluid -->
			<!-- End of Main Content -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->
	<%@ include file="/views/common/footer.jsp"%>

</body>
</html>