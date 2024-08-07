package com.carwash.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import com.carwash.entity.Booking;

public class RowMapperImplBooking implements RowMapper<Booking> {

	@Override
	public Booking mapRow(ResultSet rs, int rowNum) throws SQLException {
		Booking book = new Booking();
		book.setPhoneNumber(rs.getString(1));
		book.setWaterWash(rs.getString(2));
		book.setFarmWash(rs.getString(3));
		book.setVocuumCleaner(rs.getString(4));
		book.setPollish(rs.getString(5));
		book.setAirCleaner(rs.getString(6));
		book.setDateAndTime(rs.getString(7));
		return book;
	}

}
