
package com.libf.ws.bond;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>anonymous complex type的 Java 类。
 * 
 * <p>以下模式片段指定包含在此类中的预期内容。
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="getSmallImageByteResult" type="{http://www.w3.org/2001/XMLSchema}base64Binary" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "getSmallImageByteResult"
})
@XmlRootElement(name = "getSmallImageByteResponse")
public class GetSmallImageByteResponse {

    protected byte[] getSmallImageByteResult;

    /**
     * 获取getSmallImageByteResult属性的值。
     * 
     * @return
     *     possible object is
     *     byte[]
     */
    public byte[] getGetSmallImageByteResult() {
        return getSmallImageByteResult;
    }

    /**
     * 设置getSmallImageByteResult属性的值。
     * 
     * @param value
     *     allowed object is
     *     byte[]
     */
    public void setGetSmallImageByteResult(byte[] value) {
        this.getSmallImageByteResult = value;
    }

}
