package com.carwash.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import com.carwash.entity.Booking;
import com.carwash.entity.CarWash;

@Component
public class CarWashDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public int getRegister(CarWash carWash) {
		
		String query = "insert into userregister(phonenumber,email,fullname,password) values(?,?,?,?)";
		
		int result = this.jdbcTemplate.update(query, carWash.getPhoneNumber(), carWash.getEmail(), carWash.getFullname(),
				carWash.getPassword());
		
		return result;
	}
	
	public CarWash getLogin(String phoneNumber) {
		
		String query = "select * from userregister where phonenumber = ?";
		RowMapperImpl rml = new RowMapperImpl();
		CarWash carWash = this.jdbcTemplate.queryForObject(query, rml, phoneNumber);
		return carWash;
	}
	
	//===============================Car booking detail=================================================================
	
	public int setBooking(Booking book) {
		String query = "insert into carbooking(phonenumber,waterwash,farmwash,voccumcleaner,pollish,aircleaner,dateandtime) values(?,?,?,?,?,?,?)";
		int result = this.jdbcTemplate.update(query,book.getPhoneNumber(), book.getWaterWash(), book.getFarmWash(), book.getVocuumCleaner(), book.getPollish(), book.getAirCleaner(),book.getDateAndTime());
		return result;
	}
	
	public List<Booking> getBooking(String phoneNumber) {
		
		String query = "select * from carbooking where phonenumber = ?";
		RowMapperImplBooking rmib = new RowMapperImplBooking();
		List<Booking> list = (List<Booking>)this.jdbcTemplate.query(query, rmib, phoneNumber);
		return list;
	}
	
//	================================Reset Password Process================================================================
	public CarWash getPassword(String number) {
		String query = "select * from userregister where phonenumber = ?";
		RowMapperImpl rml = new RowMapperImpl();
		CarWash carWash = this.jdbcTemplate.queryForObject(query, rml, number);
		return carWash;
	}
	
	public int updatePassword(String password, String number) {
		String query = "update userregister set password = ? where phonenumber = ?";
		CarWash cw = new CarWash();
		int result = this.jdbcTemplate.update(query, password, number);
		return result;
	}
}
