<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://webxml.com.cn/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://webxml.com.cn/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;即时外汇汇率数据 WEB 服务&lt;/strong&gt;，数据即时更新。此外汇汇率数据 WEB 服务仅作为用户获取信息之目的，并不构成投资建议。&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; 和/或其各供应商不为本页面提供信息的错误、残缺、延迟或因依靠此信息所采取的任何行动负责。&lt;strong&gt;市场有风险，投资需谨慎&lt;/strong&gt;。&lt;br /&gt;此外汇汇率数据Web Services请不要用于任何商业目的，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://webxml.com.cn/">
      <s:element name="getSupportCurrency">
        <s:complexType />
      </s:element>
      <s:element name="getSupportCurrencyResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getSupportCurrencyResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getSupportCurrencyString">
        <s:complexType />
      </s:element>
      <s:element name="getSupportCurrencyStringResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getSupportCurrencyStringResult" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfString">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="string" nillable="true" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="getExchangeRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="theType" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getExchangeRateResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRatePro">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="theType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="theUserID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRateProResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getExchangeRateProResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="DataSet" nillable="true">
        <s:complexType>
          <s:sequence>
            <s:element ref="s:schema" />
            <s:any />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ArrayOfString" nillable="true" type="tns:ArrayOfString" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="getSupportCurrencySoapIn">
    <wsdl:part name="parameters" element="tns:getSupportCurrency" />
  </wsdl:message>
  <wsdl:message name="getSupportCurrencySoapOut">
    <wsdl:part name="parameters" element="tns:getSupportCurrencyResponse" />
  </wsdl:message>
  <wsdl:message name="getSupportCurrencyStringSoapIn">
    <wsdl:part name="parameters" element="tns:getSupportCurrencyString" />
  </wsdl:message>
  <wsdl:message name="getSupportCurrencyStringSoapOut">
    <wsdl:part name="parameters" element="tns:getSupportCurrencyStringResponse" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateSoapIn">
    <wsdl:part name="parameters" element="tns:getExchangeRate" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateSoapOut">
    <wsdl:part name="parameters" element="tns:getExchangeRateResponse" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateProSoapIn">
    <wsdl:part name="parameters" element="tns:getExchangeRatePro" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateProSoapOut">
    <wsdl:part name="parameters" element="tns:getExchangeRateProResponse" />
  </wsdl:message>
  <wsdl:message name="getSupportCurrencyHttpGetIn" />
  <wsdl:message name="getSupportCurrencyHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getSupportCurrencyStringHttpGetIn" />
  <wsdl:message name="getSupportCurrencyStringHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateHttpGetIn">
    <wsdl:part name="theType" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateProHttpGetIn">
    <wsdl:part name="theType" type="s:string" />
    <wsdl:part name="theUserID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateProHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getSupportCurrencyHttpPostIn" />
  <wsdl:message name="getSupportCurrencyHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getSupportCurrencyStringHttpPostIn" />
  <wsdl:message name="getSupportCurrencyStringHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateHttpPostIn">
    <wsdl:part name="theType" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateProHttpPostIn">
    <wsdl:part name="theType" type="s:string" />
    <wsdl:part name="theUserID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateProHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:portType name="ExchangeRateWebServiceSoap">
    <wsdl:operation name="getSupportCurrency">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得支持的代码和货币名称 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：无； 返回数据：DataSet，Item(Code) = 代码，Item(Currency) = 货币名称。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportCurrencySoapIn" />
      <wsdl:output message="tns:getSupportCurrencySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getSupportCurrencyString">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得支持的代码和货币名称 String()&lt;/h3&gt;&lt;p&gt;输入参数：无； 返回数据：一个一维字符串数组 String() 货币名称,代码。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportCurrencyStringSoapIn" />
      <wsdl:output message="tns:getSupportCurrencyStringSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得即时外汇汇率数据&lt;/h3&gt;&lt;p&gt;输入参数：theType = 汇率类型：A = 全部汇率；B = 基本汇率；C = 交叉汇率，默认为 A； 返回数据：DataSet，Item(Code) = 代码、Item(Currency) = 名称、Item(ClosePrice) = 最新价、Item(DiffPercent) = 涨跌%、Item(DiffAmount) = 涨跌金额、Item(OpenPrice) = 开盘价、Item(HighPrice) = 最高价、Item(LowPrice) = 最低价、Item(Range) = 震幅%、Item(BuyPrice) = 买入价、Item(SellPrice) = 卖出价、Item(ChangeColor) = 涨跌颜色、Item(DataTime) = 数据时间。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRateSoapIn" />
      <wsdl:output message="tns:getExchangeRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatePro">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得即时外汇汇率数据（商业用户）&lt;/h3&gt;&lt;p&gt;调用方法同：getExchangeRate，输入参数：theType = 汇率类型：A = 全部汇率；B = 基本汇率；C = 交叉汇率，默认为 A，theUserID = 商业用户ID ； 返回数据：DataSet&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRateProSoapIn" />
      <wsdl:output message="tns:getExchangeRateProSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="ExchangeRateWebServiceHttpGet">
    <wsdl:operation name="getSupportCurrency">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得支持的代码和货币名称 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：无； 返回数据：DataSet，Item(Code) = 代码，Item(Currency) = 货币名称。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportCurrencyHttpGetIn" />
      <wsdl:output message="tns:getSupportCurrencyHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getSupportCurrencyString">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得支持的代码和货币名称 String()&lt;/h3&gt;&lt;p&gt;输入参数：无； 返回数据：一个一维字符串数组 String() 货币名称,代码。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportCurrencyStringHttpGetIn" />
      <wsdl:output message="tns:getSupportCurrencyStringHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得即时外汇汇率数据&lt;/h3&gt;&lt;p&gt;输入参数：theType = 汇率类型：A = 全部汇率；B = 基本汇率；C = 交叉汇率，默认为 A； 返回数据：DataSet，Item(Code) = 代码、Item(Currency) = 名称、Item(ClosePrice) = 最新价、Item(DiffPercent) = 涨跌%、Item(DiffAmount) = 涨跌金额、Item(OpenPrice) = 开盘价、Item(HighPrice) = 最高价、Item(LowPrice) = 最低价、Item(Range) = 震幅%、Item(BuyPrice) = 买入价、Item(SellPrice) = 卖出价、Item(ChangeColor) = 涨跌颜色、Item(DataTime) = 数据时间。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRateHttpGetIn" />
      <wsdl:output message="tns:getExchangeRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatePro">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得即时外汇汇率数据（商业用户）&lt;/h3&gt;&lt;p&gt;调用方法同：getExchangeRate，输入参数：theType = 汇率类型：A = 全部汇率；B = 基本汇率；C = 交叉汇率，默认为 A，theUserID = 商业用户ID ； 返回数据：DataSet&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRateProHttpGetIn" />
      <wsdl:output message="tns:getExchangeRateProHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="ExchangeRateWebServiceHttpPost">
    <wsdl:operation name="getSupportCurrency">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得支持的代码和货币名称 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：无； 返回数据：DataSet，Item(Code) = 代码，Item(Currency) = 货币名称。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportCurrencyHttpPostIn" />
      <wsdl:output message="tns:getSupportCurrencyHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getSupportCurrencyString">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得支持的代码和货币名称 String()&lt;/h3&gt;&lt;p&gt;输入参数：无； 返回数据：一个一维字符串数组 String() 货币名称,代码。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportCurrencyStringHttpPostIn" />
      <wsdl:output message="tns:getSupportCurrencyStringHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得即时外汇汇率数据&lt;/h3&gt;&lt;p&gt;输入参数：theType = 汇率类型：A = 全部汇率；B = 基本汇率；C = 交叉汇率，默认为 A； 返回数据：DataSet，Item(Code) = 代码、Item(Currency) = 名称、Item(ClosePrice) = 最新价、Item(DiffPercent) = 涨跌%、Item(DiffAmount) = 涨跌金额、Item(OpenPrice) = 开盘价、Item(HighPrice) = 最高价、Item(LowPrice) = 最低价、Item(Range) = 震幅%、Item(BuyPrice) = 买入价、Item(SellPrice) = 卖出价、Item(ChangeColor) = 涨跌颜色、Item(DataTime) = 数据时间。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRateHttpPostIn" />
      <wsdl:output message="tns:getExchangeRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatePro">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得即时外汇汇率数据（商业用户）&lt;/h3&gt;&lt;p&gt;调用方法同：getExchangeRate，输入参数：theType = 汇率类型：A = 全部汇率；B = 基本汇率；C = 交叉汇率，默认为 A，theUserID = 商业用户ID ； 返回数据：DataSet&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRateProHttpPostIn" />
      <wsdl:output message="tns:getExchangeRateProHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="ExchangeRateWebServiceSoap" type="tns:ExchangeRateWebServiceSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getSupportCurrency">
      <soap:operation soapAction="http://webxml.com.cn/getSupportCurrency" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSupportCurrencyString">
      <soap:operation soapAction="http://webxml.com.cn/getSupportCurrencyString" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <soap:operation soapAction="http://webxml.com.cn/getExchangeRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatePro">
      <soap:operation soapAction="http://webxml.com.cn/getExchangeRatePro" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ExchangeRateWebServiceSoap12" type="tns:ExchangeRateWebServiceSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getSupportCurrency">
      <soap12:operation soapAction="http://webxml.com.cn/getSupportCurrency" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSupportCurrencyString">
      <soap12:operation soapAction="http://webxml.com.cn/getSupportCurrencyString" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <soap12:operation soapAction="http://webxml.com.cn/getExchangeRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatePro">
      <soap12:operation soapAction="http://webxml.com.cn/getExchangeRatePro" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ExchangeRateWebServiceHttpGet" type="tns:ExchangeRateWebServiceHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="getSupportCurrency">
      <http:operation location="/getSupportCurrency" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSupportCurrencyString">
      <http:operation location="/getSupportCurrencyString" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <http:operation location="/getExchangeRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatePro">
      <http:operation location="/getExchangeRatePro" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ExchangeRateWebServiceHttpPost" type="tns:ExchangeRateWebServiceHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="getSupportCurrency">
      <http:operation location="/getSupportCurrency" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSupportCurrencyString">
      <http:operation location="/getSupportCurrencyString" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <http:operation location="/getExchangeRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatePro">
      <http:operation location="/getExchangeRatePro" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="ExchangeRateWebService">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;即时外汇汇率数据 WEB 服务&lt;/strong&gt;，数据即时更新。此外汇汇率数据 WEB 服务仅作为用户获取信息之目的，并不构成投资建议。&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; 和/或其各供应商不为本页面提供信息的错误、残缺、延迟或因依靠此信息所采取的任何行动负责。&lt;strong&gt;市场有风险，投资需谨慎&lt;/strong&gt;。&lt;br /&gt;此外汇汇率数据Web Services请不要用于任何商业目的，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
    <wsdl:port name="ExchangeRateWebServiceSoap" binding="tns:ExchangeRateWebServiceSoap">
      <soap:address location="http://www.webxml.com.cn/WebServices/ExchangeRateWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="ExchangeRateWebServiceSoap12" binding="tns:ExchangeRateWebServiceSoap12">
      <soap12:address location="http://www.webxml.com.cn/WebServices/ExchangeRateWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="ExchangeRateWebServiceHttpGet" binding="tns:ExchangeRateWebServiceHttpGet">
      <http:address location="http://www.webxml.com.cn/WebServices/ExchangeRateWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="ExchangeRateWebServiceHttpPost" binding="tns:ExchangeRateWebServiceHttpPost">
      <http:address location="http://www.webxml.com.cn/WebServices/ExchangeRateWebService.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>