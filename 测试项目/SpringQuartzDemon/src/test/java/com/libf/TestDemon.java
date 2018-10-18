package com.libf;

import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class TestDemon {
    private volatile  Integer num = 0;

    public static void main(String[] args) {
        HashMap<String,Object> hashMap = new HashMap<String,Object>(100);

        hashMap.put("name1","李冰锋");

        hashMap.put("name","李冰");
        String s = (String) hashMap.get("name");

        System.out.println(s);

        System.out.println(hashMap);


        ConcurrentHashMap<String, Object> con = new ConcurrentHashMap<>();

        con.put("name2","li");

        con.putAll(hashMap);

        System.out.println(con);

        AtomicInteger integer;




    }
}
