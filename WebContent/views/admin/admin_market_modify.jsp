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
			<div id="content">
				<!-- Begin Page Content -->
				<div class="p-5" style="margin-left: 20%; margin-right: 20%;">
				<form actoion="" method="POST" class="user">

					<div class="text-center">
						<h1 class="h4 text-gray-900 mb-4">매장정보 수정 입니다</h1>

						<div id="div-radio"
							style="display: inline-block; margin: 20px; font-size: 25px;">
							<!-- 나중에 CSS 파일에 class: div-radio 만들어서 넣어줄 것! -->
							<input type="radio" id="hotel" name="market" class="marketRatio"
								onclick="hospital();"> <label for="hotel">호텔</label>
						</div>
						<div id="div-radio"
							style="display: inline-block; margin: 20px; font-size: 25px;">
							<input type="radio" id="beauty" name="market" class="marketRatio"
								onclick="hospital();"> <label for="beauty">미용</label>
						</div id="div-radio">
						<div id="div-radio"
							style="display: inline-block; margin: 20px; font-size: 25px;">
							<input type="radio" id="hospital" name="market"
								class="marketRatio" onclick="hospital();"> <label
								for="hospital">병원</label>
						</div>



					</div>
					<!-- 필수정보는 required 나중에 필수로 넣어줄 것! -->
						<!-- name="market~~~" // id="mark~~~" -->
						<div class="form-group">
							<input type="text" name="marketName"
								class="form-control form-control-user" id="markName"
								placeholder="상호명*" required>
						</div>
						<div class="form-group row">
							<div class="col-sm-6 mb-3 mb-sm-0">
								<input type="password" name="marketPassword"
									class="form-control form-control-user" id="markPassword"
									placeholder="Password*" required>
							</div>
							<div class="col-sm-6">
								<input type="password" name="marketPassword2"
									class="form-control form-control-user" id="markPassword2"
									placeholder="Password check*" required>
							</div>
						</div>
						<div class="form-group">
							<input type="email" name="marketEmail"
								class="form-control form-control-user" id="markEmail"
								placeholder="Email Address*" required>
						</div>
						<div class="form-group row">
							<div class="col-sm-6 mb-3 mb-sm-0">
								<input type="text" name="marketTel"
									class="form-control form-control-user" id="markTel"
									placeholder="Tel*" required>
							</div>
							<div class="col-sm-6">
								<input type="text" name="marketPhone"
									class="form-control form-control-user" id="markPhone"
									placeholder="Phone">
							</div>
						</div>
						<div class="form-group">
							<input type="text" name="marketAddress"
								class="form-control form-control-user" id="markAddress"
								placeholder="Address*" required>
						</div>
						<div class="form-group">
							<input type="text" name="marketTwo"
								class="form-control form-control-user" id="mark2"
								placeholder="여기도 회원가입과">
						</div>
						<div class="form-group">
							<input type="text" name="marketThree"
								class="form-control form-control-user" id="mark3"
								placeholder="똑같습니다...">
						</div>
						<div class="form-group">
							<input type="text" name="marketFour"
								class="form-control form-control-user" id="mark4"
								placeholder="필요한 걸 넣어주면 됩니다">
						</div>
						<div>
							<input type="file">file로 input타입 잡아줄 것! 사진파일 올리기
						</div>
						<br> <br>

						<div id="marketCheckMain" style="display: block;">
							이 칸은 병원을 넣어줄 때만 보이도록! 이런식으로 해야 할 듯... <br>

							<!-- 스크립트를 넣었는데 $ 가 undefined.... 이거 JQuery 연결 안 돼있나??? 봐야겠다 -->
							<script>
								function hospital() {
									if ($('#hospital').prop('checked')) {
										$('#marketCheckMain').css('display',
												'block');
									} else {
										$('#marketCheckMain').css('display',
												'none');
									}
								};
							</script>

							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<!-- CSS 추가 id="marketCheck"-->
								</label><input type="checkbox" id="111"><label for="111">24시간
									운영</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								</label><input type="checkbox" id="222"><label for="222">응급실
									운영</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								</label><input type="checkbox" id="333"><label for="333">특수동물
									가능</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								</label><input type="checkbox" id="444"><label for="444">등등
									필요한 체크기능 넣을것</label>
							</div>
						</div>
						<br> <a href="admin_market_table.jsp"
							class="btn btn-primary btn-user btn-block"
							style="display: inline-block; width: 500px; margin: 25px;"
							onclick="submitBtn1();"> <!-- 버튼이 너무 길어보인다? 가운데에다 사이즈 줄일까... -->
							완료 <!-- 이걸 submit 버튼으로 바꿔야 할 것 같은데.......--> <script>
								function submitBtn1() {
									alert('수정 완료')
								}
							</script>
						</a> <a href="admin_market_table.jsp"
							class="btn btn-primary btn-user btn-block"
							style="display: inline-block; width: 125px; margin: 25px; background: gray;">
							<!-- 버튼이 너무 길어보인다? 가운데에다 사이즈 줄일까... --> 취소
						</a> <a href="admin_market_table.jsp"
							class="btn btn-primary btn-user btn-block"
							style="display: inline-block; width: 125px; margin: 25px; background: crimson;"
							onclick="deleteBtn();"> <!-- 버튼이 너무 길어보인다? 가운데에다 사이즈 줄일까... -->
							삭제 <script>
								function deleteBtn() {
									if (confirm('정말 삭제하시겠습니까?') == true) {
										alert('삭제되었습니다');
									} else {
										return;
									}
								}
							</script>

						</a><br> 
						</form>
						
						<br> <br> <br> <br> <br> <br>
						<br> <br> <br>
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->
	<%@ include file="/views/common/footer.jsp"%>

</body>
</html>