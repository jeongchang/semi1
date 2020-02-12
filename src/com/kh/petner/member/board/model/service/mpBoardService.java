package com.kh.petner.member.board.model.service;

import static com.kh.petner.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.petner.member.board.model.dao.mpBoardDao;
import com.kh.petner.member.board.model.vo.mpBoard;

public class mpBoardService {

	private mpBoardDao bDao = new mpBoardDao();
	
	public int getListCount() {
		int listCount=0;
		Connection con = getConnection();
		
		listCount = bDao.getListCount(con);
		
		close(con);
		return listCount;
	}

	public ArrayList<mpBoard> selectList(int currentPage, int limit) {
		ArrayList<mpBoard> blist=null;
		Connection con = getConnection();
		
		blist = bDao.selectList(currentPage, limit, con);
		
		System.out.println("Service selectList return : "+ blist);
		
		close(con);
		
		return blist;
	}

}
