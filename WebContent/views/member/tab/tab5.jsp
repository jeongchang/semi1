<%-- 공용 자랑 게시판 입니다. --%>


<%@page import="com.kh.petner.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <% 
        	Member m = (Member)session.getAttribute("member");
        
        	System.out.println("Member : "+m);
        
        %>
        
<h1>펫트너 월드 임당</h1>

<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">

  <title>Shop Homepage - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="/PETNER/resources/css/member/tab/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/PETNER/resources/css/member/tab/page.css" rel="stylesheet">

  <!-- Bootstrap core JavaScript -->
  <script src="/PETNER/resources/css/member/tab/jquery.min.js"></script>
  <script src="/PETNER/resources/css/member/tab/bootstrap.bundle.min.js"></script>

</head>

<!-- 각 menu를 눌렀을 때 ListPage가 바뀌게 해주는 스크립트 -->

 <script>
 			// 좌측 메뉴 버튼
          function listFunction(menu){
        	  console.log('listFunction 실행 : '+menu);
            $.ajax({
                  url:"/PETNER/selectList.bo",
                  type:"get",
                  data: { type:menu},
                  
                  success:function(data){
                    console.log("성공 : "+data);
        
                    $.each(data, function(index, item){
                      var $1div1 = $('<div class="col-lg-4 col-md-6 mb-4">');
                      var $2div2 = $('<div class="card h-100">');
                      

                      var $3a = $('<a>');
                      var $4img = $('<img class="card-img-top">').attr('src','/PETNER/resources/img/member/pet/default.jpg'); //getPetPic() 
                      $3a.append($4img);


                      var $3div3 = $('<div class="card-body">');

                      var $4h4 = $('<h4 class="card-title">');
                      var $5a = $('<a>').attr('href', '#').text('아마도 펫 네임');     //  이 값 대신 받아온 주소를 입력해준다. 
                      $4h4.append($5a);
                      
                      var $4h5 = $('<h5>');
                      var $4p = $('<p class="card-text">').text('aaaa');                          //내용 부분. 일부분만 가져와서 출력하자. 
                      $4h5.append($4p);
                      $3div3.append($4h4);

                      $3div3.append($4h5);



                      var $3div4 = $('<div clas="card-footer">');
                      var $4small = $('<small class="text-muted">').text('별점, 총점, 후기점수, 평가점수 등을 표시한다.');  // 동적으로 수정해줄 필요가 있다.
                      $3div4.append($4small);

                      $2div2.append($3a);
                      $2div2.append($3div3);
                      $2div2.append($3div4);

                      $1div1.append($2div2);
                      
                      $('#listDiv').append($1div1);

                    });
                  },
                  error:function(data){
                    console.log('에러에러에러에러');
                  }
              });
          }
          
          //글쓰기
          function insertBoard(){
        	  $('#listArea').hide();	//현재 목록화면 가리기
        	  $('#pageArea').load("tab/BoardTab/mpBoardInsertForm.jsp");
          } // insertBoard
        </script>




<body>

  <!-- Page Content -->
  <!-- menu -->
  <div class="container">
    <div class="row">
      <div class="col-lg-3">
        <h1 class="my-4">Name</h1>
        <div class="list-group">
          <a href="#" class="list-group-item" onclick="listFunction('all')">전체</a>
          <a href="#" class="list-group-item" onclick="listFunction('top')">인기</a>
          <a href="#" class="list-group-item" onclick="listFunction('user')">내거</a>
          <br>
          <div style="padding-left: 10px;, padding-right: 10px;">
	          <button class="btn btn-info" style="width: 90px;" onclick="insertBoard();">글쓰기</button> 
	          <button class="btn btn-info" style="width: 90px;" onclick="">임시</button>
        </div>
        </div>
      </div>  <!-- /.col-lg-3 -->


      <!-- right display -->

      <!-- 협찬,추천,이벤트 배너 -->
      <div class="col-lg-9">
      <div  id="pageArea">
      	<div id="listArea">
        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>


       



        <!-- 글 ListPage -->
        <!-- 글 만큼 반복문 -->
        <div class="row" id="listDiv">                                          
          <div class="col-lg-4 col-md-6 mb-4">                     <!-- 1 -->
            <div class="card h-100">                               <!-- 2 -->
                                              <!--여기에 받아온 이미지 넣어야함-->
              <a href="#">                                          <!-- 3 -->
                <img class="card-img-top" src="" alt="">            <!-- 4 -->
              </a>      
              
              <div class="card-body">                                       <!-- 3 -->
                <h4 class="card-title">                                     <!-- 4 -->
                  <a href="#">Item One</a>    <!-- 여기에 글제목 및 Detail페이지로 링크-->      <!-- 5 -->
                </h4>
                <h5>$24.99</h5>               <!-- 작성자 혹은 주인공 펫네임 -->                <!-- 4 -->
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                                                                                              <!-- 4 -->
              </div>

              <div class="card-footer">                                                       <!-- 3 -->
                                          <!-- 여기에 별점등등-->
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>     <!-- 4 -->
              </div>

            </div>
          </div>
        </div>
        <!-- /.row -->
		</div> <!-- listArea -->
	</div> <!--  id="pageArea" -->
      </div>  <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

</body>

</html>
