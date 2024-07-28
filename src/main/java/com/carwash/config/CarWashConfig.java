package com.carwash.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;

@Configuration
public class CarWashConfig {

//	@Bean("jdbcTemplate")
//	public JdbcTemplate jdbcTemplate(DataSource ds) {
//		JdbcTemplate jdbc = new JdbcTemplate();
//		jdbc.setDataSource(ds);
//		return jdbc;
//	}
}
