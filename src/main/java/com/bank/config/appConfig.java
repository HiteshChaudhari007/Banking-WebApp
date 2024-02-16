package com.bank.config;

import java.util.Properties;

import org.hibernate.cfg.Environment;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

import com.bank.model.Account;

@Configuration
@ComponentScan(basePackages = "com.bank")
public class appConfig {

	@Bean
	public DriverManagerDataSource ds() {
		DriverManagerDataSource dm = new DriverManagerDataSource();
		dm.setDriverClassName("com.mysql.jdbc.Driver");
		dm.setUrl("jdbc:mysql://localhost:3306/mybank");
		dm.setUsername("root");
		dm.setPassword("root");
		return dm;
	}

	@Bean
	public LocalSessionFactoryBean factoryBean() {
		LocalSessionFactoryBean lb = new LocalSessionFactoryBean();
		lb.setDataSource(ds());

		Properties setting = new Properties();
		setting.put(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");
		setting.put(Environment.HBM2DDL_AUTO, "update");
		setting.put(Environment.SHOW_SQL, "true");
		setting.put(Environment.FORMAT_SQL, "true");

		lb.setHibernateProperties(setting);
		lb.setAnnotatedClasses(Account.class);

		return lb;
	}

}
