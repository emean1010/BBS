package kybmig.ssm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

@SpringBootApplication
@EnableAsync
public class SsmApplication {

    public static void main(String[] args) {
        System.out.println(System.getProperty("file.encoding"));
        System.out.println("本地 ide 运行入口或者命令行 java -jar 的入口，生产级 tomcat 不运行这个 main 函数");
        SpringApplication.run(SsmApplication.class, args);
    }
}
