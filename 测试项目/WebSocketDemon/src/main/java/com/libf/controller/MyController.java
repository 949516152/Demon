package com.libf.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.libf.entity.Student;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/my")
public class MyController {
    /**
     * 使用@ResponseBody注解就会使视图解析器不对返回值进行解析
     * @RequestBody 将HTTP请求正文转换为适合的HttpMessageConverter对象
     * @param jsonName
     * @return
     */
    @RequestMapping(value = "/username.do")
    public @ResponseBody String getAjax(String jsonName, HttpServletRequest request, HttpServletResponse response,
                                        String name){
        HttpSession session = request.getSession();
        session.setAttribute("name","Libingfeng");

        Cookie cookie = new Cookie("name",name);
        Cookie[] cookies = request.getCookies();

        System.out.println(cookie.getValue()+"cookie"+session.getAttribute("name"));
        System.out.println(name);
        String o = JSON.toJSONString(jsonName);

        System.out.println(o);

//        JSONArray jsonArray = JSONObject.parseArray(jsonName);

//        对JSONArray转换为迭代器然后进行遍历
//        Iterator iterator = Student.iterator();
//        while (iterator.hasNext()){
//            JSONObject jsonObject = (JSONObject) iterator.next();
//            String s = jsonObject.getString("name");
//            System.out.println(s + "*******************");
//        }

        System.out.println("+++++++++++++++++++");

        ModelAndView mode = new ModelAndView("add");
        mode.addObject("name",jsonName);

        System.out.println((jsonName)+"------------");
        return "add";
    }
}
