package com.springsecurity.demo.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MySpringMvcDispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	/*
	 * registers a DispatcherServlet and allows you to easily 
	 * add configuration classes to load for both classes and to apply filters to the DispatcherServlet 
	 * and to provide the servlet mapping.
	  */
	@Override
	protected Class<?>[] getRootConfigClasses() {
		// no root config classes for our project.... only servlet config classes
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		return new Class[] {DemoAppConfig.class};// servlet config class created earlier
	}

	@Override
	protected String[] getServletMappings() {
		
		return new String[]{"/"};
	}

}
