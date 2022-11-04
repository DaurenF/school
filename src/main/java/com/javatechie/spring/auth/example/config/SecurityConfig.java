package com.javatechie.spring.auth.example.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpRequest;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.cors();
		http.csrf().disable();
		  http.authorizeRequests()
				  .antMatchers("/**").fullyAuthenticated()
				  .antMatchers(HttpMethod.POST, "/**").authenticated()
				  .antMatchers(HttpMethod.DELETE, "/**").authenticated()
				  .and().httpBasic();
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("dauren").password("{noop}qwerty").roles("USER");
	}

}
