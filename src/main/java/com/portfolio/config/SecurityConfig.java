package com.portfolio.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            .authorizeHttpRequests(authorize -> authorize
                .requestMatchers("/admin/**").authenticated() // /admin 경로만 인증 필요
                .requestMatchers("/css/**", "/js/**", "/images/**", "/favicon.ico").permitAll() // 정적 리소스 허용
                .anyRequest().permitAll() // 그 외 모든 요청은 허용
            )
            .formLogin(form -> form
                .loginPage("/login") // 커스텀 로그인 페이지
                .defaultSuccessUrl("/admin", true) // 로그인 성공 시 /admin으로 리다이렉트
                .permitAll()
            )
            .logout(logout -> logout
                .permitAll()
            )
            .exceptionHandling(exceptions -> exceptions
                .accessDeniedPage("/") // 접근 거부 시 홈으로 리다이렉트
            );
        return http.build();
    }

    @Bean
    public UserDetailsService userDetailsService() {
        UserDetails user = User.withDefaultPasswordEncoder()
            .username("unble")
            .password("Unbleyum1106!")
            .roles("ADMIN")
            .build();
        return new InMemoryUserDetailsManager(user);
    }
}
