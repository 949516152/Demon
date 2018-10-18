<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://webxml.com.cn/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://webxml.com.cn/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;中国股票及时行情数据 WEB 服务（2）（支持香港、深圳和上海股市的全部基金、债券和股票）&lt;/strong&gt;，数据即时更新。此中国股票行情数据 WEB 服务仅作为用户获取信息之目的，并不构成投资建议。&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; 和/或其各供应商不为本页面提供信息的错误、残缺、延迟或因依靠此信息所采取的任何行动负责。&lt;strong&gt;市场有风险，投资需谨慎&lt;/strong&gt;。&lt;br /&gt;&lt;strong&gt;此中国股票行情数据只提供给商业用户使用&lt;/strong&gt;，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;！&lt;br /&gt;&lt;br /&gt;&lt;span style="color:#D20000;"&gt;&lt;strong&gt;股票输入注意事项&lt;/strong&gt;：因上海股票和深圳股票在代号上有重叠，所以在输入上海股票请在代号前加 SH，深圳加 SZ，香港加 HK（不区分大小写），例：上证指数 sh000001，深发展A sz000001，长江实业 hk00001。如不输入股票代号默认上证指数 sh000001。&lt;strong&gt;支持使用 | 符号分割的多股票查询&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://webxml.com.cn/">
      <s:element name="getStockInfo">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="theStockCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="userID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getStockInfoResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getStockInfoResult" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfString">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="string" nillable="true" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="ArrayOfString" nillable="true" type="tns:ArrayOfString" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="getStockInfoSoapIn">
    <wsdl:part name="parameters" element="tns:getStockInfo" />
  </wsdl:message>
  <wsdl:message name="getStockInfoSoapOut">
    <wsdl:part name="parameters" element="tns:getStockInfoResponse" />
  </wsdl:message>
  <wsdl:message name="getStockInfoHttpGetIn">
    <wsdl:part name="theStockCode" type="s:string" />
    <wsdl:part name="userID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getStockInfoHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getStockInfoHttpPostIn">
    <wsdl:part name="theStockCode" type="s:string" />
    <wsdl:part name="userID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getStockInfoHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:portType name="StockInfoWSSoap">
    <wsdl:operation name="getStockInfo">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得支持使用分格符 | 的多个中国股票及时行情数据&lt;/h3&gt;&lt;p&gt;输入参数：theStockCode = 股票代号，UserID：商业用户ID，返回数据：一个一维字符串数组的及时行情数据 &lt;a href="stockinfows_read_me.txt" target="_blank"&gt;详细说明&lt;/a&gt;&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStockInfoSoapIn" />
      <wsdl:output message="tns:getStockInfoSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="StockInfoWSHttpGet">
    <wsdl:operation name="getStockInfo">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得支持使用分格符 | 的多个中国股票及时行情数据&lt;/h3&gt;&lt;p&gt;输入参数：theStockCode = 股票代号，UserID：商业用户ID，返回数据：一个一维字符串数组的及时行情数据 &lt;a href="stockinfows_read_me.txt" target="_blank"&gt;详细说明&lt;/a&gt;&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStockInfoHttpGetIn" />
      <wsdl:output message="tns:getStockInfoHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="StockInfoWSHttpPost">
    <wsdl:operation name="getStockInfo">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得支持使用分格符 | 的多个中国股票及时行情数据&lt;/h3&gt;&lt;p&gt;输入参数：theStockCode = 股票代号，UserID：商业用户ID，返回数据：一个一维字符串数组的及时行情数据 &lt;a href="stockinfows_read_me.txt" target="_blank"&gt;详细说明&lt;/a&gt;&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStockInfoHttpPostIn" />
      <wsdl:output message="tns:getStockInfoHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="StockInfoWSSoap" type="tns:StockInfoWSSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getStockInfo">
      <soap:operation soapAction="http://webxml.com.cn/getStockInfo" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="StockInfoWSSoap12" type="tns:StockInfoWSSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getStockInfo">
      <soap12:operation soapAction="http://webxml.com.cn/getStockInfo" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="StockInfoWSHttpGet" type="tns:StockInfoWSHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="getStockInfo">
      <http:operation location="/getStockInfo" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="StockInfoWSHttpPost" type="tns:StockInfoWSHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="getStockInfo">
      <http:operation location="/getStockInfo" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="StockInfoWS">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;中国股票及时行情数据 WEB 服务（2）（支持香港、深圳和上海股市的全部基金、债券和股票）&lt;/strong&gt;，数据即时更新。此中国股票行情数据 WEB 服务仅作为用户获取信息之目的，并不构成投资建议。&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; 和/或其各供应商不为本页面提供信息的错误、残缺、延迟或因依靠此信息所采取的任何行动负责。&lt;strong&gt;市场有风险，投资需谨慎&lt;/strong&gt;。&lt;br /&gt;&lt;strong&gt;此中国股票行情数据只提供给商业用户使用&lt;/strong&gt;，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;！&lt;br /&gt;&lt;br /&gt;&lt;span style="color:#D20000;"&gt;&lt;strong&gt;股票输入注意事项&lt;/strong&gt;：因上海股票和深圳股票在代号上有重叠，所以在输入上海股票请在代号前加 SH，深圳加 SZ，香港加 HK（不区分大小写），例：上证指数 sh000001，深发展A sz000001，长江实业 hk00001。如不输入股票代号默认上证指数 sh000001。&lt;strong&gt;支持使用 | 符号分割的多股票查询&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
    <wsdl:port name="StockInfoWSSoap" binding="tns:StockInfoWSSoap">
      <soap:address location="http://www.webxml.com.cn/WebServices/StockInfoWS.asmx" />
    </wsdl:port>
    <wsdl:port name="StockInfoWSSoap12" binding="tns:StockInfoWSSoap12">
      <soap12:address location="http://www.webxml.com.cn/WebServices/StockInfoWS.asmx" />
    </wsdl:port>
    <wsdl:port name="StockInfoWSHttpGet" binding="tns:StockInfoWSHttpGet">
      <http:address location="http://www.webxml.com.cn/WebServices/StockInfoWS.asmx" />
    </wsdl:port>
    <wsdl:port name="StockInfoWSHttpPost" binding="tns:StockInfoWSHttpPost">
      <http:address location="http://www.webxml.com.cn/WebServices/StockInfoWS.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>