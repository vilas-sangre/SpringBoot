package com.example.app;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import java.util.HashMap;

import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.boot.context.embedded.JspServlet;

@Configuration
@EnableWebMvc
@ComponentScan
public class MvcConfiguration extends WebMvcConfigurerAdapter
{
    @Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/jsp/");
		resolver.setSuffix(".jsp");
		resolver.setViewClass(JstlView.class);
		registry.viewResolver(resolver);
	}
    
    @Bean
    public ResourceBundleMessageSource messageSource() {

    	ResourceBundleMessageSource source = new ResourceBundleMessageSource();
        source.setBasenames("message/message");
        source.setUseCodeAsDefaultMessage(true);

        return source;
    }
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
                .addResourceHandler("/resources/**")
                .addResourceLocations("/resources/");
    }
    
    @Bean
    public EmbeddedServletContainerCustomizer customizer() {
        return container -> {
            JspServlet jspServlet = new JspServlet();
            HashMap<String, String> initParams = new HashMap<>();
            initParams.put("mappedfile", "false");
            jspServlet.setInitParameters(initParams);
            container.setJspServlet(jspServlet);
        };

        // Java 8 미만이라면 다음과 같이 해준다.
//        return new EmbeddedServletContainerCustomizer() {
//            @Override
//            public void customize(ConfigurableEmbeddedServletContainer container) {
//                JspServlet jspServlet = new JspServlet();
//                HashMap<String, String> initParams = new HashMap<>();
//                initParams.put("mappedfile", "false");
//                jspServlet.setInitParameters(initParams);
//                container.setJspServlet(jspServlet);
//            }
//        };
    }    
    
}
