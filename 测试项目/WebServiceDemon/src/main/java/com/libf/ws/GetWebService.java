package com.libf.ws;

import com.libf.ws.bond.ChinaStockSmallImageWS;
import com.libf.ws.bond.ChinaStockSmallImageWSSoap;
import com.libf.ws.compiling.WebServiceDemon;
import com.libf.ws.compiling.WebServiceDemonService;
import com.libf.ws.email.ValidateEmailAddress;
import com.libf.ws.email.ValidateEmailWebService;
import com.libf.ws.email.ValidateEmailWebServiceSoap;
import com.libf.ws.ipInfo.IpAddressSearchWebService;
import com.libf.ws.ipInfo.IpAddressSearchWebServiceSoap;
import com.libf.ws.qq.QqOnlineWebService;
import com.libf.ws.qq.QqOnlineWebServiceSoap;
import com.libf.ws.stockInfo.ArrayOfString;
import com.libf.ws.stockInfo.StockInfoWS;
import com.libf.ws.stockInfo.StockInfoWSHttpPost;
import com.libf.ws.stockInfo.StockInfoWSSoap;
import com.libf.ws.weather.GetRegionDatasetResponse;
import com.libf.ws.weather.GetSupportCityDatasetResponse;
import com.libf.ws.weather.WeatherWS;
import com.libf.ws.weather.WeatherWSSoap;
import org.springframework.util.StringUtils;

import java.util.List;

public class GetWebService {

    public static void main(String[] args){
//        WebServiceDemon webServiceDemon =new WebServiceDemonService().getWebServiceDemonPort();
//        String str = webServiceDemon.transWords("Let's Get Heck Out Of Here!");
//        System.out.println(str);

//        验证邮箱
        ValidateEmailWebServiceSoap validateEmailAddress = new ValidateEmailWebService().getValidateEmailWebServiceSoap();
        /**
         * 返回值： 0 = 请重新验证；
         *          1 = 邮件地址合法；
         *          2 = 只是域名正确；
         *          3 = 一个未知错误；
         *          4 = 邮件服务器没有找到；
         *          5 = 电子邮件地址错误；
         *          6 = 免费用户验证超过数量（50次/24小时）；
         *          7 = 商业用户不能通过验证
         */
        short s = validateEmailAddress.validateEmailAddress("949516152@qq.com");

        System.out.println(String.valueOf(s));

//        验证QQ的登录状态
        QqOnlineWebService qq= new QqOnlineWebService();
        QqOnlineWebServiceSoap qTest = qq.getQqOnlineWebServiceSoap();
        String qqCheckCode = qTest.qqCheckOnline("949516152");
        System.out.println(qqCheckCode);

//查询股票行情
        ChinaStockSmallImageWSSoap stock = new ChinaStockSmallImageWS().getChinaStockSmallImageWSSoap12();
        stock.getSmallImageByte("600446", (short) 1);
//查询股票行情
        StockInfoWSSoap stockInfo = new StockInfoWS().getStockInfoWSSoap();
        ArrayOfString arrayOfString = stockInfo.getStockInfo("sz600466","");
        List<String> s1= arrayOfString.getString();
        System.out.println(s1.size());

        for (String i:
             s1) {
            System.out.println(i);
        }

//        查询IP的地址信息
        IpAddressSearchWebServiceSoap ip = new IpAddressSearchWebService().getIpAddressSearchWebServiceSoap();
        com.libf.ws.ipInfo.ArrayOfString s2 = ip.getCountryCityByIp("10.200.0.2");
        List<String> list = s2.getString();
        for (String i: list) {
            System.out.println(i);
        }


        WeatherWSSoap weatherWSSoap = new WeatherWS().getWeatherWSSoap();
        com.libf.ws.weather.ArrayOfString arrayOfString4 = weatherWSSoap.getRegionProvince();
        List<?> list3 = arrayOfString4.getString();
        for (Object i:list3
             ) {
            System.out.println(i);
        }

        System.out.println("====================1");

        com.libf.ws.weather.ArrayOfString arr;
        com.libf.ws.weather.ArrayOfString arrayOfString15 = weatherWSSoap.getRegionCountry();
        List<String> conntryList = arrayOfString15.getString();

        for (String i: conntryList) {
            String[] arrString = StringUtils.split(i,",");
            System.out.println(i+"ssssssssss"+arrString[1]);
            arr = weatherWSSoap.getSupportCityString(arrString[1]);

        }

        System.out.println("$$$$$$$$$$$$$$$$$");


        arr = weatherWSSoap.getSupportCityString("346");
        List<?> list4 = arr.getString();
        for (Object i:list4
        ) {
            System.out.println(i);
        }

        System.out.println("====================2");

        com.libf.ws.weather.ArrayOfString arrayOfString2 = weatherWSSoap.getSupportCityString("3113");
        List<String> list2 = arrayOfString2.getString();

        for (String i: list2
        ) {
            System.out.println(i);
        }
        System.out.println("================3");

        com.libf.ws.weather.ArrayOfString arrayOfString1 = weatherWSSoap.getWeather("3094","");

        List<String> list1 = arrayOfString1.getString();

        for (String i: list1
             ) {
            System.out.println(i);
        }


        System.out.println("**********************");


    }
}
