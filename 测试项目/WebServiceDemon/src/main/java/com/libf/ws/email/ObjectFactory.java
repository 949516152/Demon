
package com.libf.ws.email;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.libf.ws.email package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _UnsignedByte_QNAME = new QName("http://WebXml.com.cn/", "unsignedByte");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.libf.ws.email
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ValidateEmailAddressProResponse }
     * 
     */
    public ValidateEmailAddressProResponse createValidateEmailAddressProResponse() {
        return new ValidateEmailAddressProResponse();
    }

    /**
     * Create an instance of {@link ValidateEmailAddress }
     * 
     */
    public ValidateEmailAddress createValidateEmailAddress() {
        return new ValidateEmailAddress();
    }

    /**
     * Create an instance of {@link ValidateEmailAddressResponse }
     * 
     */
    public ValidateEmailAddressResponse createValidateEmailAddressResponse() {
        return new ValidateEmailAddressResponse();
    }

    /**
     * Create an instance of {@link ValidateEmailAddressPro }
     * 
     */
    public ValidateEmailAddressPro createValidateEmailAddressPro() {
        return new ValidateEmailAddressPro();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Short }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebXml.com.cn/", name = "unsignedByte")
    public JAXBElement<Short> createUnsignedByte(Short value) {
        return new JAXBElement<Short>(_UnsignedByte_QNAME, Short.class, null, value);
    }

}
