package com.kh.petner.market.model.dao;

import static com.kh.petner.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.petner.market.model.vo.Market;

public class MarketDao {
	
	private Properties prop;
	
	public MarketDao() {
		prop = new Properties();
		
		String filePath = MarketDao.class.getResource("/config/market-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 매장 추가
	 * @param conn
	 * @param m
	 * @return
	 */
	public int insertMarket(Connection conn, Market m) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertMarket");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getMarketName());
			pstmt.setString(2, m.getMarketPwd());
			pstmt.setString(3, m.getMarketEmail());
			pstmt.setString(4, m.getMarketType());
			pstmt.setString(5, m.getMarketTel());
			pstmt.setString(6, m.getMarketCellPhone());
			pstmt.setString(7, m.getMarketAddress());
			pstmt.setString(8, m.getMarketShowFile());
			pstmt.setString(9, m.getMarketCheckData());
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/**
	 * 권구현
	 * 상점 리스트 출력
	 * @param conn
	 * @return
	 */
	public ArrayList<Market> selectList(Connection conn) {
		ArrayList<Market> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		System.out.println("[DAO] 실행");
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			list = new ArrayList<Market>();
			
			while(rset.next()) {
				
				Market m = new Market();
				
				m.setMarketId(rset.getInt("MARKET_ID"));
				m.setMarketName(rset.getString("MARKET_NAME"));
				m.setMarketPwd(rset.getString("MARKET_PASSWORD"));
				m.setMarketEmail(rset.getString("MARKET_EMAIL"));
				m.setMarketType(rset.getString("MARKET_TYPE"));
				m.setMarketTel(rset.getString("MARKET_TEL"));
				m.setMarketCellPhone(rset.getString("MARKET_CELLPHONE"));
				m.setMarketAddress(rset.getString("MARKET_ADDRESS"));
				m.setMarketShowFile(rset.getString("MARKET_UPLOADFILE"));
				m.setEnDate(rset.getDate("ENDATE"));
				m.setStatus(rset.getString("STATUS"));
				
				list.add(m);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

}
