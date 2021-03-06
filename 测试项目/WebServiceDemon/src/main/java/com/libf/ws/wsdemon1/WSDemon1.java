
package com.libf.ws.wsdemon1;

import javax.jws.WebMethod;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebService(name = "WSDemon1", targetNamespace = "http://webservice.libf.com/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface WSDemon1 {


    /**
     * 
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "send", targetNamespace = "http://webservice.libf.com/", className = "com.libf.ws.wsdemon1.Send")
    @ResponseWrapper(localName = "sendResponse", targetNamespace = "http://webservice.libf.com/", className = "com.libf.ws.wsdemon1.SendResponse")
    @Action(input = "http://webservice.libf.com/WSDemon1/sendRequest", output = "http://webservice.libf.com/WSDemon1/sendResponse")
    String send();

}
