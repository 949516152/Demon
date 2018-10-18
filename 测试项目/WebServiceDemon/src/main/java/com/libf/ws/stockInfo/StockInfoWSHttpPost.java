
package com.libf.ws.stockInfo;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.xml.bind.annotation.XmlSeeAlso;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebService(name = "StockInfoWSHttpPost", targetNamespace = "http://webxml.com.cn/")
@SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.BARE)
@XmlSeeAlso({
    ObjectFactory.class
})
public interface StockInfoWSHttpPost {


    /**
     * <br /><h3>获得支持使用分格符 | 的多个中国股票及时行情数据</h3><p>输入参数：theStockCode = 股票代号，UserID：商业用户ID，返回数据：一个一维字符串数组的及时行情数据 <a href="stockinfows_read_me.txt" target="_blank">详细说明</a></p><br />
     * 
     * @param theStockCode
     * @param userID
     * @return
     *     returns com.libf.ws.stockInfo.ArrayOfString
     */
    @WebMethod
    @WebResult(name = "ArrayOfString", targetNamespace = "http://webxml.com.cn/", partName = "Body")
    public ArrayOfString getStockInfo(
        @WebParam(name = "string", targetNamespace = "http://www.w3.org/2001/XMLSchema", partName = "theStockCode")
        String theStockCode,
        @WebParam(name = "string", targetNamespace = "http://www.w3.org/2001/XMLSchema", partName = "userID")
        String userID);

}
