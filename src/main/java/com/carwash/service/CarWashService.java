package com.carwash.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.carwash.dao.CarWashDao;
import com.carwash.entity.Booking;
import com.carwash.entity.CarWash;

@Component
public class CarWashService {

	@Autowired
	private CarWashDao carWashDao;

	public CarWash getLogin(String phoneNumber) {
		CarWash carWash = carWashDao.getLogin(phoneNumber);

		return carWash;
	}

	// =========================================== booking detail
	// ================================================

	public int setBooking(Booking book) {
		int result = carWashDao.setBooking(book);
		return result;
	}

	public List<Booking> getBooking(String number) {
		List<Booking> list = carWashDao.getBooking(number);
		return list;
	}
	
//	==============================================Reset Password Process=============================
	public CarWash getPassword(String number) {
		CarWash carWash = carWashDao.getPassword(number);
		return carWash;
	}
	
	public int updatePassword(String password, String number) {
		int result = carWashDao.updatePassword(password, number);
		return result;
	}
}
