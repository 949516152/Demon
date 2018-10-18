
package com.libf.ws.bond;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSchemaType;
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
 *         &lt;element name="theStockCode" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="theImageType" type="{http://www.w3.org/2001/XMLSchema}unsignedByte"/>
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
    "theStockCode",
    "theImageType"
})
@XmlRootElement(name = "getSmallImageByte")
public class GetSmallImageByte {

    protected String theStockCode;
    @XmlSchemaType(name = "unsignedByte")
    protected short theImageType;

    /**
     * 获取theStockCode属性的值。
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTheStockCode() {
        return theStockCode;
    }

    /**
     * 设置theStockCode属性的值。
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTheStockCode(String value) {
        this.theStockCode = value;
    }

    /**
     * 获取theImageType属性的值。
     * 
     */
    public short getTheImageType() {
        return theImageType;
    }

    /**
     * 设置theImageType属性的值。
     * 
     */
    public void setTheImageType(short value) {
        this.theImageType = value;
    }

}
