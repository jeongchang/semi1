package com.kh.petner.market.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Market implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -1884690988993745693L;
	private int marketId; // 고유번호? 넘버로?
	private String marketName;
	private String marketPwd;
	private String marketEmail;
	private String marketType; 		// 매장 타입
	private String marketTel;       // 매장번호
	private String marketCellPhone; // 매장 휴대번호?
	private String marketAddress;
	private String marketShowFile;		// 매장 첨부파일사진?
	private String marketTwo;
	private String marketThree;
	private String marketFour;
	private Date enDate;            // 매장 가입일
	private String status;		   	// 삭제여부? 넣어야 되나 ㅋㅋ
	private String marketCheckData;      // 그 체크박스 한 거
	
	public Market() {}

	// 생성자는 나중에 필요할 때 하나씩 넣어주자
	
	
	public Market(int marketId, String marketName, String marketPwd, String marketEmail, String marketType,
			String marketTel, String marketCellPhone, String marketAddress, String marketShowFile, String marketTwo,
			String marketThree, String marketFour, Date enDate, String status, String marketCheckData) {
		this.marketId = marketId;
		this.marketName = marketName;
		this.marketPwd = marketPwd;
		this.marketEmail = marketEmail;
		this.marketType = marketType;
		this.marketTel = marketTel;
		this.marketCellPhone = marketCellPhone;
		this.marketAddress = marketAddress;
		this.marketShowFile = marketShowFile;
		this.marketTwo = marketTwo;
		this.marketThree = marketThree;
		this.marketFour = marketFour;
		this.enDate = enDate;
		this.status = status;
	}

	public int getMarketId() {
		return marketId;
	}

	public void setMarketId(int marketId) {
		this.marketId = marketId;
	}

	public String getMarketName() {
		return marketName;
	}

	public void setMarketName(String marketName) {
		this.marketName = marketName;
	}

	public String getMarketPwd() {
		return marketPwd;
	}

	public void setMarketPwd(String marketPwd) {
		this.marketPwd = marketPwd;
	}

	public String getMarketEmail() {
		return marketEmail;
	}

	public void setMarketEmail(String marketEmail) {
		this.marketEmail = marketEmail;
	}

	public String getMarketType() {
		return marketType;
	}

	public void setMarketType(String marketType) {
		this.marketType = marketType;
	}

	public String getMarketTel() {
		return marketTel;
	}

	public void setMarketTel(String marketTel) {
		this.marketTel = marketTel;
	}

	public String getMarketCellPhone() {
		return marketCellPhone;
	}

	public void setMarketCellPhone(String marketCellPhone) {
		this.marketCellPhone = marketCellPhone;
	}

	public String getMarketAddress() {
		return marketAddress;
	}

	public void setMarketAddress(String marketAddress) {
		this.marketAddress = marketAddress;
	}

	public String getMarketShowFile() {
		return marketShowFile;
	}

	public void setMarketShowFile(String marketShowFile) {
		this.marketShowFile = marketShowFile;
	}

	public String getMarketTwo() {
		return marketTwo;
	}

	public void setMarketTwo(String marketTwo) {
		this.marketTwo = marketTwo;
	}

	public String getMarketThree() {
		return marketThree;
	}

	public void setMarketThree(String marketThree) {
		this.marketThree = marketThree;
	}

	public String getMarketFour() {
		return marketFour;
	}

	public void setMarketFour(String marketFour) {
		this.marketFour = marketFour;
	}

	public Date getEnDate() {
		return enDate;
	}

	public void setEnDate(Date enDate) {
		this.enDate = enDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMarketCheckData() {
		return marketCheckData;
	}

	public void setMarketCheckData(String marketCheckData) {
		this.marketCheckData = marketCheckData;
	}


	@Override
	public String toString() {
		return "Market [marketId=" + marketId + ", marketName=" + marketName + ", marketPwd=" + marketPwd
				+ ", marketEmail=" + marketEmail + ", marketType=" + marketType + ", marketTel=" + marketTel
				+ ", marketCellPhone=" + marketCellPhone + ", marketAddress=" + marketAddress + ", marketShowFile=" + marketShowFile
				+ ", marketTwo=" + marketTwo + ", marketThree=" + marketThree + ", marketFour=" + marketFour
				+ ", enDate=" + enDate + ", status=" + status + ", marketCheckData=" + marketCheckData+"]";
	}
	
	
	
	
	
	
	

}
