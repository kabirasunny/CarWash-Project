package com.carwash.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.carwash.entity.CarWash;

public class RowMapperImpl implements RowMapper<CarWash> {

	@Override
	public CarWash mapRow(ResultSet rs, int rowNum) throws SQLException {
		CarWash carWash = new CarWash();
		carWash.setPhoneNumber(rs.getString(1));
		carWash.setEmail(rs.getString(2));
		carWash.setFullname(rs.getString(3));
		carWash.setPassword(rs.getString(4));
		return carWash;
	}

}
