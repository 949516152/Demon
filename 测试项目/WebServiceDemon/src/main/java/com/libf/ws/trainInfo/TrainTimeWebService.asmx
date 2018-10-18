<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://WebXml.com.cn/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://WebXml.com.cn/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;火车时刻表 WEB 服务&lt;/strong&gt;提供：站站查询；车次查询；车站所有车次查询。本火车时刻表 WEB 服务提供的列车时刻表数据仅供参考，如有异议以当地铁路部门颁布为准。&lt;/br&gt;此火车时刻表Web Services请不要用于任何商业目的，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;！&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://WebXml.com.cn/">
      <s:element name="getStationNameDataSet">
        <s:complexType />
      </s:element>
      <s:element name="getStationNameDataSetResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getStationNameDataSetResult">
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
      <s:element name="getStationAndTimeByTrainCode">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="TrainCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getStationAndTimeByTrainCodeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getStationAndTimeByTrainCodeResult" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfString">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="string" nillable="true" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="getVersionTime">
        <s:complexType />
      </s:element>
      <s:element name="getVersionTimeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getVersionTimeResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getStationAndTimeDataSetByTrainCode">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="TrainCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getStationAndTimeDataSetByTrainCodeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getStationAndTimeDataSetByTrainCodeResult">
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
      <s:element name="getStationAndTimeDataSetByLikeTrainCode">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="TrainCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getStationAndTimeDataSetByLikeTrainCodeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getStationAndTimeDataSetByLikeTrainCodeResult">
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
      <s:element name="getDetailInfoByTrainCode">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="TrainCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getDetailInfoByTrainCodeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getDetailInfoByTrainCodeResult">
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
      <s:element name="getStationName">
        <s:complexType />
      </s:element>
      <s:element name="getStationNameResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getStationNameResult" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getStationAndTimeByStationName">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="StartStation" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ArriveStation" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getStationAndTimeByStationNameResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getStationAndTimeByStationNameResult">
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
      <s:element name="string" nillable="true" type="s:string" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="getStationNameDataSetSoapIn">
    <wsdl:part name="parameters" element="tns:getStationNameDataSet" />
  </wsdl:message>
  <wsdl:message name="getStationNameDataSetSoapOut">
    <wsdl:part name="parameters" element="tns:getStationNameDataSetResponse" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeByTrainCodeSoapIn">
    <wsdl:part name="parameters" element="tns:getStationAndTimeByTrainCode" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeByTrainCodeSoapOut">
    <wsdl:part name="parameters" element="tns:getStationAndTimeByTrainCodeResponse" />
  </wsdl:message>
  <wsdl:message name="getVersionTimeSoapIn">
    <wsdl:part name="parameters" element="tns:getVersionTime" />
  </wsdl:message>
  <wsdl:message name="getVersionTimeSoapOut">
    <wsdl:part name="parameters" element="tns:getVersionTimeResponse" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeDataSetByTrainCodeSoapIn">
    <wsdl:part name="parameters" element="tns:getStationAndTimeDataSetByTrainCode" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeDataSetByTrainCodeSoapOut">
    <wsdl:part name="parameters" element="tns:getStationAndTimeDataSetByTrainCodeResponse" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeDataSetByLikeTrainCodeSoapIn">
    <wsdl:part name="parameters" element="tns:getStationAndTimeDataSetByLikeTrainCode" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeDataSetByLikeTrainCodeSoapOut">
    <wsdl:part name="parameters" element="tns:getStationAndTimeDataSetByLikeTrainCodeResponse" />
  </wsdl:message>
  <wsdl:message name="getDetailInfoByTrainCodeSoapIn">
    <wsdl:part name="parameters" element="tns:getDetailInfoByTrainCode" />
  </wsdl:message>
  <wsdl:message name="getDetailInfoByTrainCodeSoapOut">
    <wsdl:part name="parameters" element="tns:getDetailInfoByTrainCodeResponse" />
  </wsdl:message>
  <wsdl:message name="getStationNameSoapIn">
    <wsdl:part name="parameters" element="tns:getStationName" />
  </wsdl:message>
  <wsdl:message name="getStationNameSoapOut">
    <wsdl:part name="parameters" element="tns:getStationNameResponse" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeByStationNameSoapIn">
    <wsdl:part name="parameters" element="tns:getStationAndTimeByStationName" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeByStationNameSoapOut">
    <wsdl:part name="parameters" element="tns:getStationAndTimeByStationNameResponse" />
  </wsdl:message>
  <wsdl:message name="getStationNameDataSetHttpGetIn" />
  <wsdl:message name="getStationNameDataSetHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeByTrainCodeHttpGetIn">
    <wsdl:part name="TrainCode" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeByTrainCodeHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getVersionTimeHttpGetIn" />
  <wsdl:message name="getVersionTimeHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeDataSetByTrainCodeHttpGetIn">
    <wsdl:part name="TrainCode" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeDataSetByTrainCodeHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeDataSetByLikeTrainCodeHttpGetIn">
    <wsdl:part name="TrainCode" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeDataSetByLikeTrainCodeHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getDetailInfoByTrainCodeHttpGetIn">
    <wsdl:part name="TrainCode" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getDetailInfoByTrainCodeHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getStationNameHttpGetIn" />
  <wsdl:message name="getStationNameHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeByStationNameHttpGetIn">
    <wsdl:part name="StartStation" type="s:string" />
    <wsdl:part name="ArriveStation" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeByStationNameHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getStationNameDataSetHttpPostIn" />
  <wsdl:message name="getStationNameDataSetHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeByTrainCodeHttpPostIn">
    <wsdl:part name="TrainCode" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeByTrainCodeHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getVersionTimeHttpPostIn" />
  <wsdl:message name="getVersionTimeHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeDataSetByTrainCodeHttpPostIn">
    <wsdl:part name="TrainCode" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeDataSetByTrainCodeHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeDataSetByLikeTrainCodeHttpPostIn">
    <wsdl:part name="TrainCode" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeDataSetByLikeTrainCodeHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getDetailInfoByTrainCodeHttpPostIn">
    <wsdl:part name="TrainCode" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getDetailInfoByTrainCodeHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getStationNameHttpPostIn" />
  <wsdl:message name="getStationNameHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeByStationNameHttpPostIn">
    <wsdl:part name="StartStation" type="s:string" />
    <wsdl:part name="ArriveStation" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getStationAndTimeByStationNameHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:portType name="TrainTimeWebServiceSoap">
    <wsdl:operation name="getStationNameDataSet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本火车时刻表Web Services支持的全部站台名称和拼音缩写 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：无；返回数据：结构为 站台名称、拼音缩写，按拼音缩写升序排列&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationNameDataSetSoapIn" />
      <wsdl:output message="tns:getStationNameDataSetSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByTrainCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过火车车次查询火车时刻表 String()&lt;/h3&gt;&lt;p&gt;输入参数：车次代号字符串，空字符串默认上海到北京D32次，UserID = 商业用户ID（普通用户不需要）；返回数据：一个一维字符串数组 String(9)，String(0)=车次、String(1)=始发站、String(2)=终点站、String(3)=发车站、String(4)=发车时间、String(5)=到达站、String(6)=到达时间、String(7)=里程(KM)、String(8)=历时、String(9)=空字符串(备用)&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationAndTimeByTrainCodeSoapIn" />
      <wsdl:output message="tns:getStationAndTimeByTrainCodeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本火车时刻表Web Services的数据库版本更新时间&lt;/h3&gt;&lt;p&gt;输入参数：无，输出参数 String&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getVersionTimeSoapIn" />
      <wsdl:output message="tns:getVersionTimeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByTrainCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过火车车次查询本火车时刻表 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：车次代号字符串，空字符串默认上海到北京D32次，UserID = 商业用户ID（普通用户不需要）；返回数据：DataSet，Item.(TrainCode)=车次、Item.(FirstStation)=始发站、Item.(LastStation)=终点站、Item.(StartStation)=发车站、Item.(StartTime)=发车时间、Item.(ArriveStation)=到达站、Item.(ArriveTime)=到达时间、Item.(KM)=里程(KM)、Item.(UseDate)=历时&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationAndTimeDataSetByTrainCodeSoapIn" />
      <wsdl:output message="tns:getStationAndTimeDataSetByTrainCodeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByLikeTrainCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过火车车次查询本火车时刻表（支持模糊查询） DataSet&lt;/h3&gt;&lt;p&gt;输入参数：车次代号字符串（支持模糊查询），空字符串默认上海到北京D32次，UserID = 商业用户ID（普通用户不需要）；返回数据：DataSet，Item.(TrainCode)=车次、Item.(FirstStation)=始发站、Item.(LastStation)=终点站、Item.(StartStation)=发车站、Item.(StartTime)=发车时间、Item.(ArriveStation)=到达站、Item.(ArriveTime)=到达时间、Item.(KM)=里程(KM)、Item.(UseDate)=历时&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationAndTimeDataSetByLikeTrainCodeSoapIn" />
      <wsdl:output message="tns:getStationAndTimeDataSetByLikeTrainCodeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getDetailInfoByTrainCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过火车车次查询列车经由车站明细 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：车次代号字符串，空字符串默认上海到北京D32次，UserID = 商业用户ID（普通用户不需要）；返回数据：DataSet，Item.(TrainStation)=车站名称、Item.(ArriveTime)=到站时间、Item.(StartTime)=发车时间、Item.(KM)=里程(KM)&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getDetailInfoByTrainCodeSoapIn" />
      <wsdl:output message="tns:getDetailInfoByTrainCodeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationName">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本火车时刻表Web Services的全部始发站名称&lt;/h3&gt;&lt;p&gt;输入参数：无，输出参数 String()&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationNameSoapIn" />
      <wsdl:output message="tns:getStationNameSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByStationName">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过发车站和到达站查询火车时刻表 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：StartStation = 发车站，ArriveStation = 到达站（支持第一个字匹配模糊查询），空字符串默认发车站上海和到达站北京，UserID = 商业用户ID（普通用户不需要）；返回数据：DataSet，Item.(TrainCode)=车次、Item.(FirstStation)=始发站、Item.(LastStation)=终点站、Item.(StartStation)=发车站、Item.(StartTime)=发车时间、Item.(ArriveStation)=到达站、Item.(ArriveTime)=到达时间、Item.(KM)=里程(KM)、Item.(UseDate)=历时&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationAndTimeByStationNameSoapIn" />
      <wsdl:output message="tns:getStationAndTimeByStationNameSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="TrainTimeWebServiceHttpGet">
    <wsdl:operation name="getStationNameDataSet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本火车时刻表Web Services支持的全部站台名称和拼音缩写 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：无；返回数据：结构为 站台名称、拼音缩写，按拼音缩写升序排列&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationNameDataSetHttpGetIn" />
      <wsdl:output message="tns:getStationNameDataSetHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByTrainCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过火车车次查询火车时刻表 String()&lt;/h3&gt;&lt;p&gt;输入参数：车次代号字符串，空字符串默认上海到北京D32次，UserID = 商业用户ID（普通用户不需要）；返回数据：一个一维字符串数组 String(9)，String(0)=车次、String(1)=始发站、String(2)=终点站、String(3)=发车站、String(4)=发车时间、String(5)=到达站、String(6)=到达时间、String(7)=里程(KM)、String(8)=历时、String(9)=空字符串(备用)&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationAndTimeByTrainCodeHttpGetIn" />
      <wsdl:output message="tns:getStationAndTimeByTrainCodeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本火车时刻表Web Services的数据库版本更新时间&lt;/h3&gt;&lt;p&gt;输入参数：无，输出参数 String&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getVersionTimeHttpGetIn" />
      <wsdl:output message="tns:getVersionTimeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByTrainCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过火车车次查询本火车时刻表 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：车次代号字符串，空字符串默认上海到北京D32次，UserID = 商业用户ID（普通用户不需要）；返回数据：DataSet，Item.(TrainCode)=车次、Item.(FirstStation)=始发站、Item.(LastStation)=终点站、Item.(StartStation)=发车站、Item.(StartTime)=发车时间、Item.(ArriveStation)=到达站、Item.(ArriveTime)=到达时间、Item.(KM)=里程(KM)、Item.(UseDate)=历时&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationAndTimeDataSetByTrainCodeHttpGetIn" />
      <wsdl:output message="tns:getStationAndTimeDataSetByTrainCodeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByLikeTrainCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过火车车次查询本火车时刻表（支持模糊查询） DataSet&lt;/h3&gt;&lt;p&gt;输入参数：车次代号字符串（支持模糊查询），空字符串默认上海到北京D32次，UserID = 商业用户ID（普通用户不需要）；返回数据：DataSet，Item.(TrainCode)=车次、Item.(FirstStation)=始发站、Item.(LastStation)=终点站、Item.(StartStation)=发车站、Item.(StartTime)=发车时间、Item.(ArriveStation)=到达站、Item.(ArriveTime)=到达时间、Item.(KM)=里程(KM)、Item.(UseDate)=历时&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationAndTimeDataSetByLikeTrainCodeHttpGetIn" />
      <wsdl:output message="tns:getStationAndTimeDataSetByLikeTrainCodeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getDetailInfoByTrainCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过火车车次查询列车经由车站明细 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：车次代号字符串，空字符串默认上海到北京D32次，UserID = 商业用户ID（普通用户不需要）；返回数据：DataSet，Item.(TrainStation)=车站名称、Item.(ArriveTime)=到站时间、Item.(StartTime)=发车时间、Item.(KM)=里程(KM)&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getDetailInfoByTrainCodeHttpGetIn" />
      <wsdl:output message="tns:getDetailInfoByTrainCodeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationName">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本火车时刻表Web Services的全部始发站名称&lt;/h3&gt;&lt;p&gt;输入参数：无，输出参数 String()&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationNameHttpGetIn" />
      <wsdl:output message="tns:getStationNameHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByStationName">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过发车站和到达站查询火车时刻表 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：StartStation = 发车站，ArriveStation = 到达站（支持第一个字匹配模糊查询），空字符串默认发车站上海和到达站北京，UserID = 商业用户ID（普通用户不需要）；返回数据：DataSet，Item.(TrainCode)=车次、Item.(FirstStation)=始发站、Item.(LastStation)=终点站、Item.(StartStation)=发车站、Item.(StartTime)=发车时间、Item.(ArriveStation)=到达站、Item.(ArriveTime)=到达时间、Item.(KM)=里程(KM)、Item.(UseDate)=历时&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationAndTimeByStationNameHttpGetIn" />
      <wsdl:output message="tns:getStationAndTimeByStationNameHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="TrainTimeWebServiceHttpPost">
    <wsdl:operation name="getStationNameDataSet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本火车时刻表Web Services支持的全部站台名称和拼音缩写 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：无；返回数据：结构为 站台名称、拼音缩写，按拼音缩写升序排列&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationNameDataSetHttpPostIn" />
      <wsdl:output message="tns:getStationNameDataSetHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByTrainCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过火车车次查询火车时刻表 String()&lt;/h3&gt;&lt;p&gt;输入参数：车次代号字符串，空字符串默认上海到北京D32次，UserID = 商业用户ID（普通用户不需要）；返回数据：一个一维字符串数组 String(9)，String(0)=车次、String(1)=始发站、String(2)=终点站、String(3)=发车站、String(4)=发车时间、String(5)=到达站、String(6)=到达时间、String(7)=里程(KM)、String(8)=历时、String(9)=空字符串(备用)&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationAndTimeByTrainCodeHttpPostIn" />
      <wsdl:output message="tns:getStationAndTimeByTrainCodeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本火车时刻表Web Services的数据库版本更新时间&lt;/h3&gt;&lt;p&gt;输入参数：无，输出参数 String&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getVersionTimeHttpPostIn" />
      <wsdl:output message="tns:getVersionTimeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByTrainCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过火车车次查询本火车时刻表 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：车次代号字符串，空字符串默认上海到北京D32次，UserID = 商业用户ID（普通用户不需要）；返回数据：DataSet，Item.(TrainCode)=车次、Item.(FirstStation)=始发站、Item.(LastStation)=终点站、Item.(StartStation)=发车站、Item.(StartTime)=发车时间、Item.(ArriveStation)=到达站、Item.(ArriveTime)=到达时间、Item.(KM)=里程(KM)、Item.(UseDate)=历时&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationAndTimeDataSetByTrainCodeHttpPostIn" />
      <wsdl:output message="tns:getStationAndTimeDataSetByTrainCodeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByLikeTrainCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过火车车次查询本火车时刻表（支持模糊查询） DataSet&lt;/h3&gt;&lt;p&gt;输入参数：车次代号字符串（支持模糊查询），空字符串默认上海到北京D32次，UserID = 商业用户ID（普通用户不需要）；返回数据：DataSet，Item.(TrainCode)=车次、Item.(FirstStation)=始发站、Item.(LastStation)=终点站、Item.(StartStation)=发车站、Item.(StartTime)=发车时间、Item.(ArriveStation)=到达站、Item.(ArriveTime)=到达时间、Item.(KM)=里程(KM)、Item.(UseDate)=历时&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationAndTimeDataSetByLikeTrainCodeHttpPostIn" />
      <wsdl:output message="tns:getStationAndTimeDataSetByLikeTrainCodeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getDetailInfoByTrainCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过火车车次查询列车经由车站明细 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：车次代号字符串，空字符串默认上海到北京D32次，UserID = 商业用户ID（普通用户不需要）；返回数据：DataSet，Item.(TrainStation)=车站名称、Item.(ArriveTime)=到站时间、Item.(StartTime)=发车时间、Item.(KM)=里程(KM)&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getDetailInfoByTrainCodeHttpPostIn" />
      <wsdl:output message="tns:getDetailInfoByTrainCodeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationName">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本火车时刻表Web Services的全部始发站名称&lt;/h3&gt;&lt;p&gt;输入参数：无，输出参数 String()&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationNameHttpPostIn" />
      <wsdl:output message="tns:getStationNameHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByStationName">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过发车站和到达站查询火车时刻表 DataSet&lt;/h3&gt;&lt;p&gt;输入参数：StartStation = 发车站，ArriveStation = 到达站（支持第一个字匹配模糊查询），空字符串默认发车站上海和到达站北京，UserID = 商业用户ID（普通用户不需要）；返回数据：DataSet，Item.(TrainCode)=车次、Item.(FirstStation)=始发站、Item.(LastStation)=终点站、Item.(StartStation)=发车站、Item.(StartTime)=发车时间、Item.(ArriveStation)=到达站、Item.(ArriveTime)=到达时间、Item.(KM)=里程(KM)、Item.(UseDate)=历时&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getStationAndTimeByStationNameHttpPostIn" />
      <wsdl:output message="tns:getStationAndTimeByStationNameHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="TrainTimeWebServiceSoap" type="tns:TrainTimeWebServiceSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getStationNameDataSet">
      <soap:operation soapAction="http://WebXml.com.cn/getStationNameDataSet" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByTrainCode">
      <soap:operation soapAction="http://WebXml.com.cn/getStationAndTimeByTrainCode" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <soap:operation soapAction="http://WebXml.com.cn/getVersionTime" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByTrainCode">
      <soap:operation soapAction="http://WebXml.com.cn/getStationAndTimeDataSetByTrainCode" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByLikeTrainCode">
      <soap:operation soapAction="http://WebXml.com.cn/getStationAndTimeDataSetByLikeTrainCode" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getDetailInfoByTrainCode">
      <soap:operation soapAction="http://WebXml.com.cn/getDetailInfoByTrainCode" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationName">
      <soap:operation soapAction="http://WebXml.com.cn/getStationName" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByStationName">
      <soap:operation soapAction="http://WebXml.com.cn/getStationAndTimeByStationName" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="TrainTimeWebServiceSoap12" type="tns:TrainTimeWebServiceSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getStationNameDataSet">
      <soap12:operation soapAction="http://WebXml.com.cn/getStationNameDataSet" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByTrainCode">
      <soap12:operation soapAction="http://WebXml.com.cn/getStationAndTimeByTrainCode" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <soap12:operation soapAction="http://WebXml.com.cn/getVersionTime" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByTrainCode">
      <soap12:operation soapAction="http://WebXml.com.cn/getStationAndTimeDataSetByTrainCode" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByLikeTrainCode">
      <soap12:operation soapAction="http://WebXml.com.cn/getStationAndTimeDataSetByLikeTrainCode" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getDetailInfoByTrainCode">
      <soap12:operation soapAction="http://WebXml.com.cn/getDetailInfoByTrainCode" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationName">
      <soap12:operation soapAction="http://WebXml.com.cn/getStationName" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByStationName">
      <soap12:operation soapAction="http://WebXml.com.cn/getStationAndTimeByStationName" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="TrainTimeWebServiceHttpGet" type="tns:TrainTimeWebServiceHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="getStationNameDataSet">
      <http:operation location="/getStationNameDataSet" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByTrainCode">
      <http:operation location="/getStationAndTimeByTrainCode" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <http:operation location="/getVersionTime" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByTrainCode">
      <http:operation location="/getStationAndTimeDataSetByTrainCode" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByLikeTrainCode">
      <http:operation location="/getStationAndTimeDataSetByLikeTrainCode" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getDetailInfoByTrainCode">
      <http:operation location="/getDetailInfoByTrainCode" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationName">
      <http:operation location="/getStationName" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByStationName">
      <http:operation location="/getStationAndTimeByStationName" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="TrainTimeWebServiceHttpPost" type="tns:TrainTimeWebServiceHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="getStationNameDataSet">
      <http:operation location="/getStationNameDataSet" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByTrainCode">
      <http:operation location="/getStationAndTimeByTrainCode" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <http:operation location="/getVersionTime" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByTrainCode">
      <http:operation location="/getStationAndTimeDataSetByTrainCode" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeDataSetByLikeTrainCode">
      <http:operation location="/getStationAndTimeDataSetByLikeTrainCode" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getDetailInfoByTrainCode">
      <http:operation location="/getDetailInfoByTrainCode" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationName">
      <http:operation location="/getStationName" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getStationAndTimeByStationName">
      <http:operation location="/getStationAndTimeByStationName" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="TrainTimeWebService">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;火车时刻表 WEB 服务&lt;/strong&gt;提供：站站查询；车次查询；车站所有车次查询。本火车时刻表 WEB 服务提供的列车时刻表数据仅供参考，如有异议以当地铁路部门颁布为准。&lt;/br&gt;此火车时刻表Web Services请不要用于任何商业目的，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;！&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
    <wsdl:port name="TrainTimeWebServiceSoap" binding="tns:TrainTimeWebServiceSoap">
      <soap:address location="http://www.webxml.com.cn/WebServices/TrainTimeWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="TrainTimeWebServiceSoap12" binding="tns:TrainTimeWebServiceSoap12">
      <soap12:address location="http://www.webxml.com.cn/WebServices/TrainTimeWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="TrainTimeWebServiceHttpGet" binding="tns:TrainTimeWebServiceHttpGet">
      <http:address location="http://www.webxml.com.cn/WebServices/TrainTimeWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="TrainTimeWebServiceHttpPost" binding="tns:TrainTimeWebServiceHttpPost">
      <http:address location="http://www.webxml.com.cn/WebServices/TrainTimeWebService.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>