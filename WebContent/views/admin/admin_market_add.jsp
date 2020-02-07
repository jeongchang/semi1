<!-- 2020.2.4
	@ 권구현
	@ 관리자 페이지에서 매장 추가를 위한 페이지
	@ /addMarket.am 서블릿으로 실행됩니다
	
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<%@ include file="/views/common/header.jsp"%>
	<div style="padding-top: 150px;"></div>

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
					<form class="user" action="/PETNER/addMarket.ad" method="POST"  
					enctype="multipart/form-data" onsubmit="return validate();">
						<div class="text-center">
							<h1 class="h4 text-gray-900 mb-4">매장 추가하기 입니다</h1>
							<div>
								<div id="div-radio" required
									style="display: inline-block; margin: 20px; font-size: 25px;">
									<!-- 나중에 CSS 파일에 class: div-radio 만들어서 넣어줄 것! -->
									<input type="radio" id="hotel" name="marketType" value="호텔" 
									class="marketRatio" onclick='hotelBtn();'> <label for="hotel">호텔</label>
								</div>
								<div id="div-radio"
									style="display: inline-block; margin: 20px; font-size: 25px;">
									<input type="radio" id="beauty" name="marketType" value="미용"
										class="marketRatio" onclick='beautyBtn();'> <label
										for="beauty">미용</label>
								</div id="div-radio">
								<div id="div-radio"
									style="display: inline-block; margin: 20px; font-size: 25px;">
									<input type="radio" id="hospital" name="marketType" value="병원"
										class="marketRatio" onclick='hospitalBtn();'> <label
										for="hospital">병원</label>
								</div>
							</div>
							


						</div>
						<!-- 필수정보는 required 나중에 필수로 넣어줄 것! -->
						<!-- name="market~~~" // id="mark~~~" -->
						<div class="form-group">
							<input type="text" name="marketName"
								class="form-control form-control-user" id="markName"
								placeholder="상호명*" required>
						</div>
						비밀번호를 넣은 이유는 나중에 매장에서도 로그인 후 댓글달기 같은 기능을 넣을 수 있으므로..<br> 관리자가
						모든 받아서 계정을 추가한 후, 매장에 이메일, 비밀번호를 통지하는 형식으로? 이 부분은 나중에 지워버림
						<div class="form-group row">
							<div class="col-sm-6 mb-3 mb-sm-0">
								<input type="password" name="marketPwd"
									class="form-control form-control-user" id="marketPwd"
									placeholder="Password*" required>
							</div>
							<div class="col-sm-6">
								<input type="password" name="marketPwd2"
									class="form-control form-control-user" id="marketPwd2"
									placeholder="Password check*" required>
							</div>
							<%-- 여기서 비밀번호가 다르면, 다릅니다. 라고 경고를 띄워줘야겠지? --%>
							
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
								<input type="text" name="marketCellPhone"
									class="form-control form-control-user" id="markCellPhone"
									placeholder="CellPhone">
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
							<input type="file" name="file" id="file">file로 input타입 잡아줄 것! 사진파일 올리기
						</div>
						<br> <br>


						<div id="marketCheckHotel" style="display: none;">
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<!-- CSS 추가 id="marketCheck"-->
								<input type="checkbox" name="marketCheckData" id="a111" value="산책 서비스"><label for="a111">&nbsp;산책 서비스</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="a222" value="목욕"><label for="a222">&nbsp;목욕</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="a333" value="스파"><label for="a333">&nbsp;스파</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="a444" value="고양이 가능"><label for="a444">&nbsp;고양이 가능</label>
							</div>
							<br>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="a555" value="24시간 운영"><label for="a555">&nbsp;24시간 운영</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="a666" value="픽업 가능"><label for="a666">&nbsp;픽업 가능</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="a777" value="특수동물 가능"><label for="a777">&nbsp;특수동물 가능</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="a888" value="그 외 기타등등"><label for="a888">&nbsp;그 외 기타등등</label>
							</div>
						</div>
						
						
						<div id="marketCheckBeauty" style="display: none;">
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="b111" value="가위컷"><label for="b111">&nbsp;가위컷</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="b222" value="곰돌이컷"><label for="b222">&nbsp;곰돌이컷</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="b333" value="서머스페샬"><label for="b333">&nbsp;서머스페샬</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="b444" value="바리깡"><label for="b444">&nbsp;바리깡</label>
							</div>
							<br>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="b555" value="24시간 운영"><label for="b555">&nbsp;24시간 운영</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="b666" value="픽업 가능"><label for="b666">&nbsp;픽업 가능</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="b777" value="특수동물 가능"><label for="b777">&nbsp;특수동물 가능</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="b888" value="그 외 기타등등"><label for="b888">&nbsp;그 외 기타등등</label>
							</div>
						</div>
						
						
						<div id="marketCheckHospital" style="display: none;">
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="c111" value="24시 운영"><label for="c111">&nbsp;24시 운영</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="c222" value="응급실 운영"><label for="c222">&nbsp;응급실 운영</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="c333" value="대형견 가능"><label for="c333">&nbsp;대형견 가능</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="c444" value="고양이 가능"><label for="c444">&nbsp;고양이 가능</label>
							</div>
							<br>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="c555" value="48시간 운영"><label for="c555">&nbsp;48시간 운영</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="c666" value="픽업 가능"><label for="c666">&nbsp;픽업 가능</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="c777" value="특수동물 가능"><label for="c777">&nbsp;특수동물 가능</label>
							</div>
							<div id="martketCheck"
								style="display: inline-block; margin: 20px; font-size: 20px;">
								<input type="checkbox" name="marketCheckData" id="c888" value="그 외 기타등등"><label for="c888">&nbsp;그 외 기타등등</label>
							</div>
						</div>
						<br> <a href="admin_market_table.jsp"
							class="btn btn-primary btn-user btn-block"
							style="max-width: 300px; display: inline-block; visibility: hidden;">
							</a> 
							<input type="submit" value="완료" href="admin_market_table.jsp" 
							class="btn btn-primary btn-user btn-block"
							style="max-width: 300px; display: inline-block;">
							<br> <br> <br> <br> <br> <br> <br>
						<br> <br> <br>
					</form>

				</div>
				<!-- /.container-fluid -->


			</div>
			<!-- End of Main Content -->


		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->
	<%@ include file="/views/common/footer.jsp"%>
	<!-- 스크립트를 넣었는데 $ 가 undefined.... 이거 JQuery 연결 안 돼있나??? 봐야겠다 -->
	<!-- 희창曰 : 스크립트를 아래쪽에 넣으니 undeifined가 뜨지.. 절차지향 -> 스크립트는 헤더나 맨 위쪽에 선언해놓아야 한다 -->
	<script>
		function hotelBtn() {
			if ($('#hotel').prop('checked')) {
				$('#marketCheckHotel').css('display',
						'block');
				$('#marketCheckBeauty').css('display',
				'none');
				$('#marketCheckHospital').css('display',
				'none');
			}
		};
		function beautyBtn() {
			if ($('#beauty').prop('checked')) {
					$('#marketCheckBeauty').css('display',
							'block');
					$('#marketCheckHotel').css('display',
					'none');
					$('#marketCheckHospital').css('display',
					'none');
			}
		}
		function hospitalBtn() {
			if ($('#hospital').prop('checked')) {
					$('#marketCheckHospital').css('display',
							'block');
					$('#marketCheckBeauty').css('display',
					'none');
					$('#marketCheckHotel').css('display',
					'none');
			} 
		}
		
		function validate() {
	        var pwd1 = $("#marketPwd").val();
	        var pwd2 = $("#marketPwd2").val();
            if(pwd1 != pwd2){
                alert("비밀번호가 서로 다릅니다.");
                $("#marketPwd2").select();
                return false;
            }
		}
	</script>
<!-- 	<script>
	$('#markPassword').focusout(function () {
        var pwd1 = $("#markPassword").val();
        var pwd2 = $("#markPassword2").val();
        if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                alert("비밀번호가 일치하지 않습니다. 비밀번호를 재확인해주세요.");
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
                pwd2.val("");
            }
        }
    });
	</script>
 -->	
 
 

</body>
</html>