package com.carwash.exception;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class CarWashException {

	@ExceptionHandler(EmptyResultDataAccessException.class)
	public String EmptyResult() {
		return "errorLogin";
	}
	
	@ExceptionHandler(DuplicateKeyException.class)
	public String duplicateKey() {
		return "errorSignup";
	}

	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value = Exception.class)
	public String exception() {
		return "error";
	}

}
