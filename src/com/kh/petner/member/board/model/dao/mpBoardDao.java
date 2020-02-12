package com.kh.petner.member.board.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.petner.member.board.model.vo.mpBoard;

public class mpBoardDao {
	
	Properties prop;
	
	public mpBoardDao() {
		prop=new Properties();
		String filePath = mpBoardDao.class.getResource("/config/mpBoard-query.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int getListCount(Connection con) {
		int listCount=0;
		Statement stmt =null;
		ResultSet rset = null;
		String sql = prop.getProperty("listCount");
		
		try {
			stmt=con.createStatement();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return listCount;
	}

	public ArrayList<mpBoard> selectList(int currentPage, int limit, Connection con) {
		ArrayList<mpBoard> blist =null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			System.out.println("DAO 시작 ");
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage-1)*limit+1;
			int endRow=startRow+limit-1;
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			System.out.println("DAO pstmt.set완료 : "+sql);
			rset=pstmt.executeQuery();
			System.out.println("DAO selectList executeQuery : "+ sql);
			blist=new ArrayList<mpBoard>();
			
			while(rset.next()) {
				System.out.println("DAO selectList while문 반복");
				mpBoard b = 
						new mpBoard(rset.getInt("B_NO")
												, rset.getInt("B_TYPE") 
												, rset.getString("B_TITLE")
												, rset.getString("B_CONTENT")
												, rset.getString("USER_EMAIL")
												, rset.getInt("B_COUNT")
												, rset.getString("B_FILE")
												, rset.getDate("B_DATE")
												, rset.getString("B_STATUS")
											);
				
				blist.add(b);
			}//while
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		System.out.println("DAO selectList return : "+ blist);
		return blist;
	}

}
