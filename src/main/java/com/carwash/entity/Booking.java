package com.carwash.entity;

public class Booking {

	private String phoneNumber;
	private String waterWash;
	private String farmWash;
	private String vocuumCleaner;
	private String pollish;
	private String airCleaner;
	private String dateAndTime;

	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Booking(String phoneNumber, String waterWash, String farmWash, String vocuumCleaner, String pollish,
			String airCleaner, String dateAndTime) {
		super();
		this.phoneNumber = phoneNumber;
		this.waterWash = waterWash;
		this.farmWash = farmWash;
		this.vocuumCleaner = vocuumCleaner;
		this.pollish = pollish;
		this.airCleaner = airCleaner;
		this.dateAndTime = dateAndTime;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getWaterWash() {
		return waterWash;
	}

	public void setWaterWash(String waterWash) {
		this.waterWash = waterWash;
	}

	public String getFarmWash() {
		return farmWash;
	}

	public void setFarmWash(String farmWash) {
		this.farmWash = farmWash;
	}

	public String getVocuumCleaner() {
		return vocuumCleaner;
	}

	public void setVocuumCleaner(String voccumCleaner) {
		this.vocuumCleaner = voccumCleaner;
	}

	public String getPollish() {
		return pollish;
	}

	public void setPollish(String pollish) {
		this.pollish = pollish;
	}

	public String getAirCleaner() {
		return airCleaner;
	}

	public void setAirCleaner(String airCleaner) {
		this.airCleaner = airCleaner;
	}

	public String getDateAndTime() {
		return dateAndTime;
	}

	public void setDateAndTime(String dateAndTime) {
		this.dateAndTime = dateAndTime;
	}

	@Override
	public String toString() {
		return "Booking [phoneNumber=" + phoneNumber + ", waterWash=" + waterWash + ", farmWash=" + farmWash
				+ ", voccumCleaner=" + vocuumCleaner + ", pollish=" + pollish + ", airCleaner=" + airCleaner
				+ ", dateAndTime=" + dateAndTime + "]";
	}

}
