package com.libf.webservice;

import javax.jws.WebService;
import javax.xml.ws.Endpoint;

/***
 * 使用webService注解可以创建使用WebService服务
 */
@WebService
public class WSDemon1 {
    public String send(){
        System.out.println("WSDL1");
        return "this is WSDemon1";
    }

    public static void main(String[] args) {
        Endpoint.publish("http://localhost:8080/services",new WSDemon1());
        System.out.println("***************");
    }
}
