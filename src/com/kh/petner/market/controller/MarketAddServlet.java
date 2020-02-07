package com.kh.petner.market.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.petner.market.model.service.MarketService;
import com.kh.petner.market.model.vo.Market;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class MarketAddServlet
 */
@WebServlet("/addMarket.ad")
public class MarketAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MarketAddServlet() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	/**
	 * 상점 추가 메소드
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파일 업로드 위한 사전 준비작업 //
		int maxSize = 1024*1024*10;
		
		System.out.println("[SERVLET] 시작");
		
		if(!ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("msg", "Multipart를 통한 파일 전송이 아닙니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		
		String root = request.getServletContext().getRealPath("/"); // 최상위 폴더 위치 지정
		String savePath = root + "resources/adminUploadFiles";
		
		// 멀티 리퀘스트 생성
		MultipartRequest mrequest = new MultipartRequest(
										request,
										savePath,
										maxSize,
										"UTF-8",
										new DefaultFileRenamePolicy()
										);
				
		// ----------- 준비 끝 컨트롤러 시작 --------------------//
		
		// 전송값 처리
		String marketName = mrequest.getParameter("marketName");
		String marketPwd = mrequest.getParameter("marketPwd");
		String marketEmail = mrequest.getParameter("marketEmail");
		String marketType = mrequest.getParameter("marketType");
		String marketTel = mrequest.getParameter("marketTel");
		String marketCellPhone = mrequest.getParameter("parketCellPhone");
		String marketAddress = mrequest.getParameter("marketAddress");
//		String marketTwo = mrequest.getParameter("marketTwo");
//		String marketThree = mrequest.getParameter("marketThree");
//		String marketFour = mrequest.getParameter("marketFour");
		
		String fileName = mrequest.getFilesystemName("file");
		String checkData = String.join(", ", mrequest.getParameterValues("marketCheckData"));

		Market m = new Market();
		m.setMarketName(marketName);
		m.setMarketPwd(marketPwd);
		m.setMarketEmail(marketEmail);
		m.setMarketType(marketType);
		m.setMarketTel(marketTel);
		m.setMarketCellPhone(marketCellPhone);
		m.setMarketAddress(marketAddress);
		m.setMarketShowFile(fileName);
		m.setMarketCheckData(checkData);
		
		int result = new MarketService().insertMarket(m);
		
		if(result > 0) {
			response.sendRedirect("/PETNER/marketList.ad");
		} else {
			request.setAttribute("msg", "상점 추가 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
