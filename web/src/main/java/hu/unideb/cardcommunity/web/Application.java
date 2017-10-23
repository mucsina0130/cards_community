package hu.unideb.cardcommunity.web;

import javax.faces.webapp.FacesServlet;
import javax.servlet.ServletContext;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.ServletContextAware;

@Configuration
@EnableAutoConfiguration
@ComponentScan({ "hu.unideb.cardcommunity" })
public class Application extends SpringBootServletInitializer implements ServletContextAware {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(Application.class, Initializer.class);
	}

	@Bean
	public ServletRegistrationBean servletRegistrationBean() {
		FacesServlet servlet = new FacesServlet();
		ServletRegistrationBean servletRegistrationBean = new ServletRegistrationBean(servlet, "*.xhtml");
		servletRegistrationBean.setLoadOnStartup(1);
		return servletRegistrationBean;
	}

	@Override
	public void setServletContext(ServletContext arg0) {
		arg0.setInitParameter("com.sun.faces.forceLoadConfiguration", "true");
	}
}