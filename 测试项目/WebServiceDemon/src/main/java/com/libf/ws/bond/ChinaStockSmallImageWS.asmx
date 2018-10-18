<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://WebXml.com.cn/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://WebXml.com.cn/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;中国股票行情分时走势预览缩略图 WEB 服务（支持深圳和上海股市的全部基金、债券和股票）&lt;/strong&gt;，数据即时更新。此中国股票走势预览缩略图 WEB 服务仅作为用户获取信息之目的，并不构成投资建议。&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; 和/或其各供应商不为本页面提供信息的错误、残缺、延迟或因依靠此信息所采取的任何行动负责。&lt;strong&gt;市场有风险，投资需谨慎&lt;/strong&gt;。&lt;br /&gt;此中国股票行情数据Web Services请不要用于任何商业目的，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;！&lt;br /&gt;&lt;br /&gt;&lt;span style="color:#D20000;"&gt;&lt;strong&gt;股票输入注意事项&lt;/strong&gt;：因上海股票和深圳股票在代号上有重叠，所以在输入上海股票请在代号前加 SH，深圳加 SZ（不区分大小写），例：上证指数 sh000001，深发展A sz000001。如不输入股票代号默认上证指数 sh000001&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://WebXml.com.cn/">
      <s:element name="getSmallImage">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="theStockCode" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="theImageType" type="s:unsignedByte" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getSmallImageResponse">
        <s:complexType />
      </s:element>
      <s:element name="getSmallImageByte">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="theStockCode" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="theImageType" type="s:unsignedByte" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getSmallImageByteResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getSmallImageByteResult" type="s:base64Binary" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="base64Binary" nillable="true" type="s:base64Binary" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="getSmallImageSoapIn">
    <wsdl:part name="parameters" element="tns:getSmallImage" />
  </wsdl:message>
  <wsdl:message name="getSmallImageSoapOut">
    <wsdl:part name="parameters" element="tns:getSmallImageResponse" />
  </wsdl:message>
  <wsdl:message name="getSmallImageByteSoapIn">
    <wsdl:part name="parameters" element="tns:getSmallImageByte" />
  </wsdl:message>
  <wsdl:message name="getSmallImageByteSoapOut">
    <wsdl:part name="parameters" element="tns:getSmallImageByteResponse" />
  </wsdl:message>
  <wsdl:message name="getSmallImageHttpGetIn">
    <wsdl:part name="theStockCode" type="s:string" />
    <wsdl:part name="theImageType" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getSmallImageHttpGetOut" />
  <wsdl:message name="getSmallImageByteHttpGetIn">
    <wsdl:part name="theStockCode" type="s:string" />
    <wsdl:part name="theImageType" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getSmallImageByteHttpGetOut">
    <wsdl:part name="Body" element="tns:base64Binary" />
  </wsdl:message>
  <wsdl:message name="getSmallImageHttpPostIn">
    <wsdl:part name="theStockCode" type="s:string" />
    <wsdl:part name="theImageType" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getSmallImageHttpPostOut" />
  <wsdl:message name="getSmallImageByteHttpPostIn">
    <wsdl:part name="theStockCode" type="s:string" />
    <wsdl:part name="theImageType" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getSmallImageByteHttpPostOut">
    <wsdl:part name="Body" element="tns:base64Binary" />
  </wsdl:message>
  <wsdl:portType name="ChinaStockSmallImageWSSoap">
    <wsdl:operation name="getSmallImage">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;直接获得中国股票GIF走势预览缩略图&lt;/h3&gt;&lt;p&gt;输入参数：theStockCode 股票代号 String，如：sh000001，theImageType 预览图类型 Byte（必须）：theImageType = 1（小图） 返回数据：股票GIF分时走势预览缩略图。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSmallImageSoapIn" />
      <wsdl:output message="tns:getSmallImageSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getSmallImageByte">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;直接获得中国股票GIF走势预览缩略图字节数组 &lt;/h3&gt;&lt;p&gt;输入参数：theStockCode 股票代号 String，如：sh000001，theImageType 预览图类型 Byte（必须）：theImageType = 1（小图）； 返回数据：股票GIF分时走势预览缩略图字节数组。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSmallImageByteSoapIn" />
      <wsdl:output message="tns:getSmallImageByteSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="ChinaStockSmallImageWSHttpGet">
    <wsdl:operation name="getSmallImage">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;直接获得中国股票GIF走势预览缩略图&lt;/h3&gt;&lt;p&gt;输入参数：theStockCode 股票代号 String，如：sh000001，theImageType 预览图类型 Byte（必须）：theImageType = 1（小图） 返回数据：股票GIF分时走势预览缩略图。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSmallImageHttpGetIn" />
      <wsdl:output message="tns:getSmallImageHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getSmallImageByte">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;直接获得中国股票GIF走势预览缩略图字节数组 &lt;/h3&gt;&lt;p&gt;输入参数：theStockCode 股票代号 String，如：sh000001，theImageType 预览图类型 Byte（必须）：theImageType = 1（小图）； 返回数据：股票GIF分时走势预览缩略图字节数组。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSmallImageByteHttpGetIn" />
      <wsdl:output message="tns:getSmallImageByteHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="ChinaStockSmallImageWSHttpPost">
    <wsdl:operation name="getSmallImage">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;直接获得中国股票GIF走势预览缩略图&lt;/h3&gt;&lt;p&gt;输入参数：theStockCode 股票代号 String，如：sh000001，theImageType 预览图类型 Byte（必须）：theImageType = 1（小图） 返回数据：股票GIF分时走势预览缩略图。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSmallImageHttpPostIn" />
      <wsdl:output message="tns:getSmallImageHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getSmallImageByte">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;直接获得中国股票GIF走势预览缩略图字节数组 &lt;/h3&gt;&lt;p&gt;输入参数：theStockCode 股票代号 String，如：sh000001，theImageType 预览图类型 Byte（必须）：theImageType = 1（小图）； 返回数据：股票GIF分时走势预览缩略图字节数组。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSmallImageByteHttpPostIn" />
      <wsdl:output message="tns:getSmallImageByteHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="ChinaStockSmallImageWSSoap" type="tns:ChinaStockSmallImageWSSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getSmallImage">
      <soap:operation soapAction="http://WebXml.com.cn/getSmallImage" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSmallImageByte">
      <soap:operation soapAction="http://WebXml.com.cn/getSmallImageByte" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ChinaStockSmallImageWSSoap12" type="tns:ChinaStockSmallImageWSSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getSmallImage">
      <soap12:operation soapAction="http://WebXml.com.cn/getSmallImage" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSmallImageByte">
      <soap12:operation soapAction="http://WebXml.com.cn/getSmallImageByte" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ChinaStockSmallImageWSHttpGet" type="tns:ChinaStockSmallImageWSHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="getSmallImage">
      <http:operation location="/getSmallImage" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="getSmallImageByte">
      <http:operation location="/getSmallImageByte" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ChinaStockSmallImageWSHttpPost" type="tns:ChinaStockSmallImageWSHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="getSmallImage">
      <http:operation location="/getSmallImage" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="getSmallImageByte">
      <http:operation location="/getSmallImageByte" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="ChinaStockSmallImageWS">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;中国股票行情分时走势预览缩略图 WEB 服务（支持深圳和上海股市的全部基金、债券和股票）&lt;/strong&gt;，数据即时更新。此中国股票走势预览缩略图 WEB 服务仅作为用户获取信息之目的，并不构成投资建议。&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; 和/或其各供应商不为本页面提供信息的错误、残缺、延迟或因依靠此信息所采取的任何行动负责。&lt;strong&gt;市场有风险，投资需谨慎&lt;/strong&gt;。&lt;br /&gt;此中国股票行情数据Web Services请不要用于任何商业目的，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;！&lt;br /&gt;&lt;br /&gt;&lt;span style="color:#D20000;"&gt;&lt;strong&gt;股票输入注意事项&lt;/strong&gt;：因上海股票和深圳股票在代号上有重叠，所以在输入上海股票请在代号前加 SH，深圳加 SZ（不区分大小写），例：上证指数 sh000001，深发展A sz000001。如不输入股票代号默认上证指数 sh000001&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
    <wsdl:port name="ChinaStockSmallImageWSSoap" binding="tns:ChinaStockSmallImageWSSoap">
      <soap:address location="http://www.webxml.com.cn/webservices/ChinaStockSmallImageWS.asmx" />
    </wsdl:port>
    <wsdl:port name="ChinaStockSmallImageWSSoap12" binding="tns:ChinaStockSmallImageWSSoap12">
      <soap12:address location="http://www.webxml.com.cn/webservices/ChinaStockSmallImageWS.asmx" />
    </wsdl:port>
    <wsdl:port name="ChinaStockSmallImageWSHttpGet" binding="tns:ChinaStockSmallImageWSHttpGet">
      <http:address location="http://www.webxml.com.cn/webservices/ChinaStockSmallImageWS.asmx" />
    </wsdl:port>
    <wsdl:port name="ChinaStockSmallImageWSHttpPost" binding="tns:ChinaStockSmallImageWSHttpPost">
      <http:address location="http://www.webxml.com.cn/webservices/ChinaStockSmallImageWS.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>