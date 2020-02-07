package com.kh.petner.member.pet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.petner.member.model.exception.MemberException;
import com.kh.petner.member.pet.model.service.PetService;
import com.kh.petner.member.pet.model.vo.Pet;


@WebServlet("/pDelete.pe")
public class PetDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
    public PetDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String petName = request.getParameter("petName");
		
		
		int result=0;
		result = new PetService().deletePet(petName);
		
		if(result>0) {
			System.out.println("펫 삭제 미션 석세스");
			// =============!!!!!!!회원 탈퇴성공시 현재 로그인한 세션정보를 초기화 해줘야 한다.!!!!
//			response.sendRedirect("PETNER/mpServlet.mp");
			request.getRequestDispatcher("mpServlet.mp").forward(request, response);

		}else {
			System.out.println("펫 삭제 실패");
			request.setAttribute("msg", "펫 삭제 수행 중 에러 발생!");
			request.setAttribute("exception", null);
			
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
