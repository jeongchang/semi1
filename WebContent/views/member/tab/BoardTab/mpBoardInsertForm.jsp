<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="/PETNER/resources/js/vendor/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="/PETNER/resources/js/member/tab/jquery-te-1.4.0.min.js"></script>
<script src="/PETNER/resources/js/vendor/bootstrap.min.js"></script>
<link rel="stylesheet" href="/PETNER/resources/css/member/tab/jquery-te-1.4.0.css">
<link rel="stylesheet" href="/PETNER/resources/css/member/tab/bootstrap.min.css">



<style>
	.img-banner-area{
		background: pink;
		background-repeat: no-repeat;
		background-size: cover;
		width: 100%;
		height: 100%;
	}
</style>

<script>


	 function uploadFile(){
	 	$('#petPic').click();
	 }

	 function LoadImg(value){
		 if(value.files && value.files[0]){
			var reader=new FileReader();
			reader.onload=function(e){
				$('#img-banner-area').attr('src','e.target.result');
			}
			reader.readAsDataURL(value.files[0]);
		 }//if
	 }


</script>

<body>

		<form action="" id="bInsertForm" method="POST" 
			enctype="multipart/form-data">
			<div class="row" style="background-color: rgba( 200, 200, 200, 0.2);">
			<div class="col-md-6">
				<div class="img-banner-area"> <!-- 요기에 이미지를 넣는다.-->
					<img id="img-banner-area" alt="" width="100%" style="display: none">
					<div class="container">
						<a href="#" id="aForInput" style="color: black;" onclick="uploadFile()">
							<h1 class="text-center" style="padding: 100px;">
								이미지를 &nbsp;&nbsp;&nbsp;&nbsp;
								<br> 업로드 
								<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 해주세염
							</h1>
						</a>	
						<input type="file" name="petPic" id="petPic" accept=".gif, .jpg, .png" style="display: none;" onchange="LoadImg(this)"/>
					</div>
				</div>
			</div> <!-- col-md-6 -->

		<div class="col-md-6" style="padding-right: 50px;">
			<div class="form-group">
				<label for="">작성자 : </label>
				<input type="text" name="userName" value="testName" disabled>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label for="">카테고리 : </label>
				<select name="Type" id="" required>
					<option value="" selected>전체 공유</option>
					<option value="">나만 공유</option>
				</select>
			</div>
			<div class="form-group">
				<input type="text" name="bTitle" class="form-control" placeholder="제목을 입력해주세요" required>
				<div class='textArea'></div> <!-- jquery text editor -->
			</div>
			<div class="text-center">
				<br>
				<button class="btn btn-primary" type="submit">글쓰기</button>
				<button class="btn btn-warning" type="reset">취소</button>
			</div>
		</div> <!-- col-md-6 -->
		</div> <!-- row -->
	</form>
	
	
	
</body>

<Script>
	//$(".textArea").jqte();
	$(".textArea").css('min-height','400px').jqte();
</Script>

