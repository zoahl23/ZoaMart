package com.example.zoamart.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
public class WebMvcConfig implements WebMvcConfigurer {
    @Bean
    public ViewResolver viewResolver() {
        final InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setViewClass(JstlView.class);
        bean.setPrefix("/WEB-INF/view/");
        bean.setSuffix(".jsp");
        return bean;
    }

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.viewResolver(viewResolver());
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/**").addResourceLocations("/content/admin/css/");
        registry.addResourceHandler("/js/**").addResourceLocations("/content/admin/js/");
        registry.addResourceHandler("/images/**").addResourceLocations("/content/admin/images/");
        registry.addResourceHandler("/fonts/**").addResourceLocations("/content/admin/fonts/");
        registry.addResourceHandler("/css2/**").addResourceLocations("/content/client/css/");
        registry.addResourceHandler("/js2/**").addResourceLocations("/content/client/js/");
        registry.addResourceHandler("/images2/**").addResourceLocations("/content/client/images/");
        registry.addResourceHandler("/fonts2/**").addResourceLocations("/content/client/fonts/");
        registry.addResourceHandler("/img/**").addResourceLocations("/content/images/");
    }

}
