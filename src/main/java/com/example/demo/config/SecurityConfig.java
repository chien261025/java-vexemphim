package com.example.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.example.demo.service.CustomUserDetailsService;

import jakarta.servlet.DispatcherType;

@Configuration
@EnableMethodSecurity(securedEnabled = true)
public class SecurityConfig {
    private final CustomUserDetailsService customUserDetailsService; // Inject userService as a dependency

    public SecurityConfig(CustomUserDetailsService customUserDetailsService) {
        this.customUserDetailsService = customUserDetailsService; // Initialize the userService
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(); // BCrypt password encoder for security
    }

    @Bean
    public UserDetailsService userDetailsService() {
        return customUserDetailsService; // Return the custom user details service
    }

    @Bean
    public DaoAuthenticationProvider authProvider(PasswordEncoder passwordEncoder,
            UserDetailsService userDetailsService) {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService); // userService implements UserDetailsService
        authProvider.setPasswordEncoder(passwordEncoder); // Set the password encoder
        authProvider.setHideUserNotFoundExceptions(false); // Show detailed error when user is not found
        return authProvider;
    }

    @Bean
    public AuthenticationSuccessHandler successHandler() {
        return new CustomSuccessHandler();
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests(authorize -> authorize
                        .dispatcherTypeMatchers(DispatcherType.FORWARD, DispatcherType.INCLUDE)
                        .permitAll()
                        .requestMatchers("/", "/login", "/client/**", "/css/**", "/js/**", "/images/**", "/product/**",
                                "/register")
                        .permitAll()
                        .requestMatchers("/admin/**").hasRole("ADMIN")
                        .anyRequest().authenticated()) // All other requests require authentication
                .logout(logout -> logout.deleteCookies("JSESSIONID").invalidateHttpSession(true)) // Logout
                                                                                                  // configuration
                .formLogin(formLogin -> formLogin
                        .loginPage("/login") // Custom login page
                        .failureUrl("/login?error") // Failure URL
                        .successHandler(successHandler()) // Custom success handler
                        .permitAll()) // Allow all users to access the login page
                .exceptionHandling(ex -> ex.accessDeniedPage("/error")); // Custom access denied page

        return http.build(); // Return the configured SecurityFilterChain
    }
}
