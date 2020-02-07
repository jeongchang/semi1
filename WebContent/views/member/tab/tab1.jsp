<%-- 회원 정보가 출력되는 탭 입니다.  --%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.petner.member.pet.model.vo.Pet"%>
<%@page import="com.kh.petner.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
   	 	Member mp = (Member)session.getAttribute("member"); 
    
    
	ArrayList<Pet> plist=null;

	//m이 널이 아니고, 관리자가 아니고, 펫의 권한이 있을때만 펫의 정보를 받아온다
	if(mp!=null && mp.getUserRoles() != 777 && mp.getUserRoles()>9){
		plist= (ArrayList<Pet>)session.getAttribute("plist");
		Pet p = plist.get(0);
	}
		

    
    %>
    <script>
    	$(function(){
    		$('div.tab_content').fadeIn();
    	});
    </script>
 			<div id="tab1" class="tab_content"><br>
 			<h1> tab2.jsp 임당</h1>
                <div class="map_text">
                    <div class="progress-table-wrap" style="text-align: center;">
                        <form action="/PETNER/pDelete.me" method="post" id="delForm">
                            <div class="mt-10">
                                <input type="text" name="USER_EMAIL"  
                                required class="single-input" disabled value="회원 EMAIL : <%=mp.getUserEmail() %>"
                                    style="background: lightgray;">
                            </div>
                            <div class="mt-10">
                                <input type="text" name="USER_NAME"
                                required class="single-input" disabled value="이름 : <%=mp.getUserName() %>">
                            </div>
                            
                            <div class="mt-10">
                                <input type="text" name="USER_PHONE"  required class="single-input"
                                disabled value="연락처 : <%=mp.getUserPhone() %>">
                            </div>
							<br>
							<br>
                            <!--기본적으로 등록된 펫이 없다는 메세지가 나온다.-->
                            
                            <% if(mp.getUserRoles() < 10 ) { %>
                            
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