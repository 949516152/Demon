
package com.libf.ws.ipInfo;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * <a href="http://www.webxml.com.cn/" target="_blank">WebXml.com.cn</a> <strong>IP地址搜索 WEB 服务</strong>包含中国和国外已知的IP地址数据，是目前最完整的IP地址数据，记录数量现已超过37万条并还在不断更新和增加中，因IP地址在不断变化，此IP地址数据查询仅供参考。</br>此IP地址搜索Web Services请不要用于任何商业目的，若有需要请<a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank">联系我们</a>，欢迎技术交流。 QQ：8409035<br /><strong>使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持</strong>！<br /><br />&nbsp;
 * 
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "IpAddressSearchWebService", targetNamespace = "http://WebXml.com.cn/", wsdlLocation = "http://www.webxml.com.cn/WebServices/IpAddressSearchWebService.asmx?wsdl")
public class IpAddressSearchWebService
    extends Service
{

    private final static URL IPADDRESSSEARCHWEBSERVICE_WSDL_LOCATION;
    private final static WebServiceException IPADDRESSSEARCHWEBSERVICE_EXCEPTION;
    private final static QName IPADDRESSSEARCHWEBSERVICE_QNAME = new QName("http://WebXml.com.cn/", "IpAddressSearchWebService");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://www.webxml.com.cn/WebServices/IpAddressSearchWebService.asmx?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        IPADDRESSSEARCHWEBSERVICE_WSDL_LOCATION = url;
        IPADDRESSSEARCHWEBSERVICE_EXCEPTION = e;
    }

    public IpAddressSearchWebService() {
        super(__getWsdlLocation(), IPADDRESSSEARCHWEBSERVICE_QNAME);
    }

    public IpAddressSearchWebService(WebServiceFeature... features) {
        super(__getWsdlLocation(), IPADDRESSSEARCHWEBSERVICE_QNAME, features);
    }

    public IpAddressSearchWebService(URL wsdlLocation) {
        super(wsdlLocation, IPADDRESSSEARCHWEBSERVICE_QNAME);
    }

    public IpAddressSearchWebService(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, IPADDRESSSEARCHWEBSERVICE_QNAME, features);
    }

    public IpAddressSearchWebService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public IpAddressSearchWebService(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns IpAddressSearchWebServiceSoap
     */
    @WebEndpoint(name = "IpAddressSearchWebServiceSoap")
    public IpAddressSearchWebServiceSoap getIpAddressSearchWebServiceSoap() {
        return super.getPort(new QName("http://WebXml.com.cn/", "IpAddressSearchWebServiceSoap"), IpAddressSearchWebServiceSoap.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns IpAddressSearchWebServiceSoap
     */
    @WebEndpoint(name = "IpAddressSearchWebServiceSoap")
    public IpAddressSearchWebServiceSoap getIpAddressSearchWebServiceSoap(WebServiceFeature... features) {
        return super.getPort(new QName("http://WebXml.com.cn/", "IpAddressSearchWebServiceSoap"), IpAddressSearchWebServiceSoap.class, features);
    }

    /**
     * 
     * @return
     *     returns IpAddressSearchWebServiceSoap
     */
    @WebEndpoint(name = "IpAddressSearchWebServiceSoap12")
    public IpAddressSearchWebServiceSoap getIpAddressSearchWebServiceSoap12() {
        return super.getPort(new QName("http://WebXml.com.cn/", "IpAddressSearchWebServiceSoap12"), IpAddressSearchWebServiceSoap.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns IpAddressSearchWebServiceSoap
     */
    @WebEndpoint(name = "IpAddressSearchWebServiceSoap12")
    public IpAddressSearchWebServiceSoap getIpAddressSearchWebServiceSoap12(WebServiceFeature... features) {
        return super.getPort(new QName("http://WebXml.com.cn/", "IpAddressSearchWebServiceSoap12"), IpAddressSearchWebServiceSoap.class, features);
    }

    /**
     * 
     * @return
     *     returns IpAddressSearchWebServiceHttpGet
     */
    @WebEndpoint(name = "IpAddressSearchWebServiceHttpGet")
    public IpAddressSearchWebServiceHttpGet getIpAddressSearchWebServiceHttpGet() {
        return super.getPort(new QName("http://WebXml.com.cn/", "IpAddressSearchWebServiceHttpGet"), IpAddressSearchWebServiceHttpGet.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns IpAddressSearchWebServiceHttpGet
     */
    @WebEndpoint(name = "IpAddressSearchWebServiceHttpGet")
    public IpAddressSearchWebServiceHttpGet getIpAddressSearchWebServiceHttpGet(WebServiceFeature... features) {
        return super.getPort(new QName("http://WebXml.com.cn/", "IpAddressSearchWebServiceHttpGet"), IpAddressSearchWebServiceHttpGet.class, features);
    }

    /**
     * 
     * @return
     *     returns IpAddressSearchWebServiceHttpPost
     */
    @WebEndpoint(name = "IpAddressSearchWebServiceHttpPost")
    public IpAddressSearchWebServiceHttpPost getIpAddressSearchWebServiceHttpPost() {
        return super.getPort(new QName("http://WebXml.com.cn/", "IpAddressSearchWebServiceHttpPost"), IpAddressSearchWebServiceHttpPost.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns IpAddressSearchWebServiceHttpPost
     */
    @WebEndpoint(name = "IpAddressSearchWebServiceHttpPost")
    public IpAddressSearchWebServiceHttpPost getIpAddressSearchWebServiceHttpPost(WebServiceFeature... features) {
        return super.getPort(new QName("http://WebXml.com.cn/", "IpAddressSearchWebServiceHttpPost"), IpAddressSearchWebServiceHttpPost.class, features);
    }

    private static URL __getWsdlLocation() {
        if (IPADDRESSSEARCHWEBSERVICE_EXCEPTION!= null) {
            throw IPADDRESSSEARCHWEBSERVICE_EXCEPTION;
        }
        return IPADDRESSSEARCHWEBSERVICE_WSDL_LOCATION;
    }

}
