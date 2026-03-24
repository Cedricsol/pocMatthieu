package com.poc.spring.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.oauth2.client.oidc.web.logout.OidcClientInitiatedLogoutSuccessHandler;
import org.springframework.security.oauth2.client.registration.ClientRegistrationRepository;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.HttpStatusEntryPoint;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
    @Bean
    SecurityFilterChain securityWebFilterChain(HttpSecurity http, ClientRegistrationRepository clientRegistrationRepository) throws Exception{
        OidcClientInitiatedLogoutSuccessHandler logoutSuccessHandler = new OidcClientInitiatedLogoutSuccessHandler(clientRegistrationRepository);
        logoutSuccessHandler.setPostLogoutRedirectUri("http://localhost:8080");

        http
        .cors(cors -> {})
        .authorizeHttpRequests(auth -> auth
            .antMatchers("/api/**").authenticated()
            .anyRequest().authenticated()
        )
        .oauth2Login(Customizer.withDefaults())
        .oauth2ResourceServer(oauth2 -> oauth2.jwt())
        .exceptionHandling(ex -> ex.defaultAuthenticationEntryPointFor(
            new HttpStatusEntryPoint(HttpStatus.UNAUTHORIZED), 
            new AntPathRequestMatcher("/api/**"))
        )
        .csrf(csrf -> csrf.disable())
        .logout(logout -> logout.logoutSuccessHandler(logoutSuccessHandler)
        .invalidateHttpSession(true)
        .clearAuthentication(true)
        .permitAll()
        );
        
        return http.build();
    }
}
