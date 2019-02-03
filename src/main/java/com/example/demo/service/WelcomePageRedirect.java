package com.example.demo.service;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Created by ZBaimanov on 26.01.2019.
 */

@Configuration
public class WelcomePageRedirect implements WebMvcConfigurer {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/")
                .setViewName("forward:/homepage.xhtml");
        registry.setOrder(Ordered.HIGHEST_PRECEDENCE);
    }

}
