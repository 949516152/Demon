package com.libf;

import org.quartz.Job;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 该实现方式是基于Spring Task框架实现
 * 该类用于实现Job接口类，实现run方法，
 * 创建定时任务，
 */
public class HelloJob implements Job {
    private String name;
    private float float1;

    /**
     * 以下set与get方法可以用于映射JobDataMap中的key值
     * @return
     */
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getFloat1() {
        return float1;
    }

    public void setFloat1(float float1) {
        this.float1 = float1;
    }

    /**
     * 定时任务具体执行任务
     * @param jobExecutionContext 工作类执行上下文，通过该参数可以获取工作类与触发器的JobDataMap中的值
     * @throws JobExecutionException
     */
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");

        System.out.println(dateFormat.format(date)+" hello world 测试!");

        //获取JobDetail中的JobDataMap的数据
        JobDataMap jobDataMap = jobExecutionContext.getJobDetail().getJobDataMap();

        System.out.println(name+"JobDetail");
        //获取Trigger中的JobDataMap数据
        JobDataMap triggerDataMap = jobExecutionContext.getTrigger().getJobDataMap();
        System.out.println(name+"JobDetail"+"///////////////////");


        //获取合并后的数据，合并后触发器中key值可以获取覆盖JobDetail中的相同的key值
        JobDataMap dataMap = jobExecutionContext.getMergedJobDataMap();
        System.out.println(dataMap.get("name")+"JobDetail"+"合并后");


        String name = jobExecutionContext.getTrigger().getKey().getName();
        System.out.println(name+"******************");
        System.out.println(jobExecutionContext.getJobDetail().getKey().getName()+"name");
    }
}
