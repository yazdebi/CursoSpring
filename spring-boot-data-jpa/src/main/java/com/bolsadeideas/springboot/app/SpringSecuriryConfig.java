package com.bolsadeideas.springboot.app;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.bolsadeideas.springboot.app.auth.handler.LoginSuccesHandler;
import com.bolsadeideas.springboot.app.models.service.JpaUserDetailsService;


@EnableGlobalMethodSecurity(securedEnabled=true, prePostEnabled=true)
@Configuration
public class SpringSecuriryConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private LoginSuccesHandler successHandler;
	//@Autowired 
	//DataSource dataSource;
	@Autowired
	JpaUserDetailsService userDetailsService;
	
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Override
	protected void configure(HttpSecurity http) throws Exception {
			http.authorizeRequests().antMatchers("/","/css/**","/js/**","/images/**","/listar","/locale").permitAll()
			//.antMatchers("/ver/**").hasAnyRole("USER")
			//.antMatchers("/uploads/**").hasAnyRole("USER")
			//.antMatchers("/form/**").hasAnyRole("ADMIN")
			//.antMatchers("/eliminar/**").hasAnyRole("ADMIN")
			//.antMatchers("/factura/**").hasAnyRole("ADMIN")
			.anyRequest().authenticated()
			.and()
				.formLogin()
				.successHandler(successHandler)
				.loginPage("/login")
				.permitAll()
			.and()
			.logout().permitAll()
			.and().exceptionHandling().accessDeniedPage("/error_403")
			;
	}

	
	
	@Autowired
	public void ConfigurerGlobal(AuthenticationManagerBuilder build)  throws Exception{
		
		build.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder);
		
		
		/* por jdbc
		build.jdbcAuthentication()
		.dataSource(dataSource)
		.passwordEncoder(passwordEncoder)
		.usersByUsernameQuery("Select username, password, enabled from users where username=?")
		.authoritiesByUsernameQuery("select u.username, a.authority from authorities a inner join users u on(a.user_id = u.id) where u.username=?");*/
		
		
		/*
		//PasswordEncoder encoder = passwordEncoder();
		PasswordEncoder encoder = this.passwordEncoder;
		//UserBuilder user = User.builder().passwordEncoder(password -> encoder.encode(password));
		UserBuilder user = User.builder().passwordEncoder(encoder::encode);
		
		builder.inMemoryAuthentication()
		.withUser(user.username("admin").password("1234").roles("ADMIN","USER"))
		.withUser(user.username("yazmin").password("1234").roles("USER"));*/
	}
	

}
