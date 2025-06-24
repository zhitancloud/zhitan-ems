package com.zhitan;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author zhitan
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class AdminApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(AdminApplication.class, args);
        System.out.println("项目启动成功");
    }
}
