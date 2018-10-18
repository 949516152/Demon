package com.libf.quartz;

import org.springframework.stereotype.Component;

@Component("doTask")
public class DoTask {

    public void doAction(){
        System.out.println("执行定时任务");
        System.out.println("开始执行");
        System.out.println("定时任务执行完毕");
    }
}
