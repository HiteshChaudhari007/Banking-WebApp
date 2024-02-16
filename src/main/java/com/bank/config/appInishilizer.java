package com.bank.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class appInishilizer implements WebApplicationInitializer {

	public void onStartup(ServletContext servletContext) throws ServletException {

		AnnotationConfigWebApplicationContext contex = new AnnotationConfigWebApplicationContext();
		contex.register(appConfig.class);
		contex.setServletContext(servletContext);
		ServletRegistration.Dynamic srd = servletContext.addServlet("dispater", new DispatcherServlet(contex));
		srd.addMapping("/");
	}

}
