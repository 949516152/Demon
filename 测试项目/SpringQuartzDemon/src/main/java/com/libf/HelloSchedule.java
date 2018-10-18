package com.libf;

import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;

import java.text.SimpleDateFormat;
import java.util.Date;

public class HelloSchedule {


    public static void main(String[] args) throws SchedulerException {

        JobDataMap jobDataMap = new JobDataMap();
        jobDataMap.put("name","Libingfeng");

        //1.首先，创建JobDetail实例，该实例与 Job实现类--任务执行类 绑定，
        // 然后通过withIdentity方法传入属性名称与方法（第一个参数为name，第一个参数为group，第二个参数可以为空，默认为DEFAULT）
        //  通过usingJobData方法传入key-value值或者JobDataMap对象。最后使用JobBuilder类的build方法创建JobDetail
        JobDetail jobDetail = JobBuilder.newJob(HelloJob.class)
                                                                //创建JobDetail实例JobDataMap数据可以传入调用usingJobData方法。
                                                                // 传入JobDataMap对象或者多次传入key-value数据
                .withIdentity("myjob","group1").usingJobData(jobDataMap).usingJobData("float1",1.12).build();

        //JobDetail实例中的三个属性 name，group，jobClass 与JobDataMap属性
//        System.out.println(jobDetail.getKey().getGroup());
//        System.out.println(jobDetail.getKey().getName());
//        System.out.println(jobDetail.getJobClass().getName());
//        System.out.println(jobDetail.getJobDataMap());

        //2.定时任务 触发器 创建Trigger触发器实例，调用withIdentity方法传入name与group属性，调用startNow方法启动触发器，
        // 调用withSchedule方法设置触发时间,即调度器，调用usingJobData传参数，调用build方法创建Trigger对象。
        Trigger trigger = TriggerBuilder.newTrigger()
                .withIdentity("myTrigger","group1")
                .startNow().withSchedule(SimpleScheduleBuilder.simpleSchedule()
                                         .withIntervalInSeconds(20).repeatForever()).usingJobData("name","李冰锋")
                .build();

        //3.创建schedule调度器工厂实例
        SchedulerFactory schedulerFactory = new StdSchedulerFactory();

        //4.获取schedule调度器对象
        Scheduler scheduler = schedulerFactory.getScheduler();

        //5.启动定时任务
        scheduler.start();

        //格式化日期
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
        System.out.println(format.format(date));

        //6.执行定时任务
        scheduler.scheduleJob(jobDetail,trigger);
    }
}
