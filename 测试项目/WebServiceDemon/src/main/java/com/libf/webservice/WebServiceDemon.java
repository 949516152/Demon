package com.libf.webservice;

import javax.jws.WebMethod;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.Endpoint;
import java.util.UUID;

/**
 * @ Author：libingfeng.
 * @ Date：Created in 17:02 2018/9/18
 * @ Description：
 *
 * @ Modified By：libingfeng
 * @Version: 2018/9/18
 */
@WebService
public class WebServiceDemon {
    /**
     *
     * @param word
     * @return
     */
    @WebMethod(action = "myAction")
    public @WebResult(name = "thisResult") String transWords(final String word){
        String res="";
        for(char ch : word.toCharArray()){
            res+="\t"+ch+"\t";
        }
        return res;
    }

    public static void main(String[] args) {
        Endpoint.publish("http://localhost:9001/Service/WebServiceDemon",new WebServiceDemon());
        System.out.println("Publish Success~");
        UUID uid = UUID.randomUUID();
        System.out.println(uid);

    }
}
