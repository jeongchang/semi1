package com.kh.petner.market.model.service;

import com.kh.petner.market.model.dao.MarketDao;
import com.kh.petner.market.model.vo.Market;
import static com.kh.petner.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

public class MarketService {
	
	private MarketDao mDao = new MarketDao();

	/**
	 * 권구현
	 * 상점 추가
	 * @param m
	 * @return
	 */
	public int insertMarket(Market m) {
		Connection conn = getConnection();
		
		int result = mDao.insertMarket(conn, m);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	/**
	 * 권구현
	 * 상점 리스트 불러오기
	 * @return
	 */
	public ArrayList<Market> selectList() {
		ArrayList<Market> list = new ArrayList<>();
		
		Connection conn = getConnection();
		
		list = mDao.selectList(conn);
		
		close(conn);
		
		return list;
	}

}
