package com.spring;

import java.util.Locale;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.web.context.request.RequestContextListener;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


//@SpringBootApplication(exclude = {ErrorMvcAutoConfiguration.class})
//@SpringBootApplication
@SpringBootApplication(exclude = { SecurityAutoConfiguration.class })
@ImportResource("classpath:root-context.xml")
@ComponentScan("com.spring.startup,com.spring.entity,com.spring.controller,com.spring.api.impl,com.spring.validation")
@EnableWebMvc
@EnableWebSecurity
@Configuration
//@EnableGlobalMethodSecurity
@PropertySources({ @PropertySource(value = "classpath:application.properties"), @PropertySource(value = "classpath:i18n/messages.properties")})

public class DemoApplication extends WebMvcConfigurerAdapter {
	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/shalon/**") .addResourceLocations("/shalon/");
    }
	
	@Bean public RequestContextListener requestContextListener(){
	    return new RequestContextListener();
	}
//	@Bean
//    public ResourceBundleMessageSource messageSource() {
//		Locale.setDefault(Locale.ENGLISH);
//        ResourceBundleMessageSource source = new ResourceBundleMessageSource();
//        source.setBasename("i18n/messages");
////        source.setUseCodeAsDefaultMessage(true);
//        return source;
//    }
	
//	@Bean
//	public LocaleResolver localeResolver(){
//	  CookieLocaleResolver resolver = new CookieLocaleResolver();
//	  resolver.setDefaultLocale(new Locale("en")); // your default locale
//	  return resolver;
//	}
	
	@Bean
	public MessageSource messageSource() {
	    Locale.setDefault(Locale.ENGLISH);
	    ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
//	    messageSource.addBasenames("classpath:org/springframework/security/messages");
	    messageSource.addBasenames("classpath:i18n/messages");
	    return messageSource;
	}
	
//	@Bean
//	public HttpFirewall allowUrlEncodedSlashHttpFirewall() {
//	    StrictHttpFirewall firewall = new StrictHttpFirewall();
//	    firewall.setAllowUrlEncodedSlash(true);    
//	    return firewall;
//	}
	

}
