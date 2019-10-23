package pl.jaczewski.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    public void configure(AuthenticationManagerBuilder auth) throws Exception{
        auth.inMemoryAuthentication()
                .withUser("anna.roszkowska@mos.gov.pl").password("{noop}roSzek15").roles("USER")
                .and()
                .withUser("marek.rokitnicki@mos.gov.pl").password("{noop}marek#32rok").roles("USER")
                .and()
                .withUser("artur.zyskowski@mos.gov.pl").password("{noop}zys*art1").roles("USER")
                .and()
                .withUser("maria.babinicz@mos.gov.pl").password("{noop}babinkA%33").roles("USER")
                .and()
                .withUser("aleksandra.muchomor@mos.gov.pl").password("{noop}muchomor555").roles("USER")
                .and()
                .withUser("eea_admin@mos.gov.pl").password("{noop}ad!min#99").roles("ADMIN");
    }

    protected void configure(HttpSecurity httpSec) throws Exception {
        httpSec.authorizeRequests()
                .antMatchers("/payments/**", "/projects/**",
                        "/beneficiaries/**", "/coordinators/**").authenticated()
                .and().formLogin();
    }
}
