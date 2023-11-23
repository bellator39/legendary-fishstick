package io.fooddelivery.configuration;

import com.stripe.Stripe;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.annotation.PostConstruct;

@Configuration
@ComponentScan("io.fooddelivery")
public class AppConfig {
    @Value("${stripe.api.secretKey}")
    private String secretKey;
    @PostConstruct
    public void  initSecretKey(){
        Stripe.apiKey = secretKey;
    }
    @Bean
    public BCryptPasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder(8);
    }
}
