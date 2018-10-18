package com.libf.controller;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArraySet;

@ServerEndpoint("/serverend")
public class SocketTest {
    private  static int onOnlineCount = 0;

    //concurrent包的线程安全Set，用来存放每个客户端对应的MyWebSocket对象。若要实现服务端与单一客户端通信的话，可以使用Map来存放，其中Key可以为用户标识
    //用于存放对话
    private static CopyOnWriteArraySet<SocketTest> copyOnWriteArraySet = new CopyOnWriteArraySet<>();

    //创建会话
    private Session session;

    /***
     * 连接成功调用的方法
     * @param session 可选的参数。session为与某个客户端的连接会话，需要通过它来给客户端发送数据
     */
    @OnOpen
    public void onOpen(Session session){
        this.session = session;
        copyOnWriteArraySet.add(this);
        addOnlineCount();
        System.out.println("连接成功");
    }

    /***
     * 关闭连接
     * @param session 用来关闭的连接
     */
    @OnClose
    public void onClose(Session session){
        this.session = session;
        copyOnWriteArraySet.remove(this);
        subOnlineCount();
        System.out.println("有连接关闭，当前在线人数："+getOnlineCount());
    }

    /***
     * 发送消息
     * @param message 发送的消息
     * @param session 发送消息的会话
     */
    @OnMessage
    public void onMessage(String message, Session session){
        System.out.println("来自客户端信息："+message);

        for (SocketTest iterm: copyOnWriteArraySet) {
            try {
                iterm.sendMessage(message);
                System.out.println("1."+this.getClass().getClassLoader().getResource("").getPath());
                System.out.println("2."+this.getClass().getClassLoader().getResource("/").getPath());

                System.out.println(System.getProperty("user.dir"));
                File file = new File("");
                System.out.println(file.getCanonicalPath());

            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 发生错误时进行的步骤
     * @param session 客户端创建的会话
     * @param error 发生错误类型
     */
    @OnError
    public void onError(Session session,Throwable error){
        System.out.println("发生错误");
        error.printStackTrace();
    }
//===========================以上注解对应websocket的方法

    /**
     *
     * @param message
     * @throws IOException
     */
    public void sendMessage(String message) throws IOException {
        //通过远程调用发送消息
        this.session.getBasicRemote().sendText(message);
        //this.session.getAsyncRemote().sendText(message);
    }

    /**
     *
     * @return
     */
    public int getOnlineCount(){
        return onOnlineCount;
    }

    /**
     *
     */
    public void addOnlineCount(){
       SocketTest.onOnlineCount++;
    }

    public void subOnlineCount(){
        SocketTest.onOnlineCount--;
    }
}
