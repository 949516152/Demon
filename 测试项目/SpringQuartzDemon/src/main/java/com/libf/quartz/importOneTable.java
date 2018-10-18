package com.libf.quartz;

import org.springframework.stereotype.Component;

@Component("importOneTable")
public class importOneTable implements Runnable {
    @Override
    public void run() {
        System.out.println("定时启用");
    }
}
