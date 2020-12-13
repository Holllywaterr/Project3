package com.mycompany.myapp.board;

import java.sql.Date;

public class BoardVO {
	private int seq;
	private String category;
	private String departurePoint;
	private String arrivalPoint;
	private String departureDay;
	private String departureTime;
	private int reservedSeat;
	private int maxSeat;
	private String bank ;
	private String bankAccount;
	private String phone;
	private String detail;
	private Date regdate;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDeparturePoint() {
		return departurePoint;
	}
	public void setDeparturePoint(String departurePoint) {
		this.departurePoint = departurePoint;
	}
	public String getArrivalPoint() {
		return arrivalPoint;
	}
	public void setArrivalPoint(String arrivalPoint) {
		this.arrivalPoint = arrivalPoint;
	}

	public String getDepartureDay() {
		return departureDay;
	}
	public void setDepartureDay(String departureDay) {
		this.departureDay = departureDay;
	}

	public String getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}
	
	public int getReservedSeat() {
		return reservedSeat;
	}
	public void setReservedSeat(int reservedSeat) {
		this.reservedSeat = reservedSeat;
	}
	public int getMaxSeat() {
		return maxSeat;
	}
	public void setMaxSeat(int maxSeat) {
		this.maxSeat = maxSeat;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getBankAccount() {
		return bankAccount;
	}
	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}
