package com.justa;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * 
 * @ClassName: BootdoApplication 
 * @Description: 项目启动类
 * @author soar
 * @date 2018年1月13日 下午11:44:56 
 *
 */
@EnableTransactionManagement
@ServletComponentScan
@MapperScan("com.justa.*.dao")
@SpringBootApplication
public class JustaApplication {
    public static void main(String[] args) {
        SpringApplication.run(JustaApplication.class, args);
        System.out.println("ヾ(◍°∇°◍)ﾉﾞ    justA启动成功      ヾ(◍°∇°◍)ﾉﾞ\n");
    }
}
