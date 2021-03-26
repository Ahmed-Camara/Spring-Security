package com.springsecurity.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter{
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		UserBuilder users = User.withDefaultPasswordEncoder();
		
		auth.inMemoryAuthentication()
			.withUser(users.username("ahmed").password("ahmed123").roles("EMPLOYEE"))
			.withUser(users.username("camara").password("camara123").roles("EMPLOYEE","STUDENT"))
			.withUser(users.username("idriss").password("idriss123").roles("EMPLOYEE","ADMIN"))
			.withUser(users.username("almam").password("almam123").roles("EMPLOYEE","ADMIN"))
			.withUser(users.username("ali").password("ali123").roles("EMPLOYEE","MANAGER"));
		
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		/**
		 * Authorize any request to all resources when they log in
		 * 
		 **/
		
		/*
		http.authorizeRequests()
			.anyRequest().authenticated()
			.and()
			.formLogin()
				.loginPage("/login")
				.loginProcessingUrl("/authenticateUser")
				.permitAll()
			.and()
			.logout().permitAll();*/
		
		/**
		 *Authorize specific request coming from a specific request to a specific resources
		 *
		 * Example : EMPLOYEE can access resources that is only intended for him, he can't access ADMIN or MANAGER resources if he does not have the roles for that
		 * 
		 * **/
		http.authorizeRequests()
		.antMatchers("/").hasRole("EMPLOYEE")
		.antMatchers("/leaders/**").hasRole("MANAGER")
		.antMatchers("/systems/**").hasRole("ADMIN")
		.and()
		.formLogin()
			.loginPage("/login")
			.loginProcessingUrl("/authenticateUser")
			.permitAll()
		.and()
		.logout().permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/access-denied");
	}
}
