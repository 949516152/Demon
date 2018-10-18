
package com.libf.ws.email;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
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
 *         &lt;element name="ValidateEmailAddressResult" type="{http://www.w3.org/2001/XMLSchema}unsignedByte"/>
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
    "validateEmailAddressResult"
})
@XmlRootElement(name = "ValidateEmailAddressResponse")
public class ValidateEmailAddressResponse {

    @XmlElement(name = "ValidateEmailAddressResult")
    @XmlSchemaType(name = "unsignedByte")
    protected short validateEmailAddressResult;

    /**
     * 获取validateEmailAddressResult属性的值。
     * 
     */
    public short getValidateEmailAddressResult() {
        return validateEmailAddressResult;
    }

    /**
     * 设置validateEmailAddressResult属性的值。
     * 
     */
    public void setValidateEmailAddressResult(short value) {
        this.validateEmailAddressResult = value;
    }

}
