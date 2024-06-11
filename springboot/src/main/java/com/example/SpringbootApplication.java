package com.example;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import tk.mybatis.spring.annotation.MapperScan;

import javax.sql.DataSource;


@SpringBootApplication
@MapperScan("com.example.dao")
public class SpringbootApplication {

    private static final Logger log = LoggerFactory.getLogger(SpringbootApplication.class);

    public static void main(String[] args) {
        String property = System.getProperty("user.dir");
        System.out.println(property);
        SpringApplication.run(SpringbootApplication.class, args);
    }

    @Bean
    public DataSource dataSource() {
        return DataSourceBuilder.create()
                .driverClassName("com.mysql.cj.jdbc.Driver")
                .url("jdbc:mysql://121.43.149.99:3306/ppchat?useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&useSSL=false&serverTimezone=GMT%2b8&allowPublicKeyRetrieval=true")
                .username("root")
                .password("030626")
                .build();
    }
}
