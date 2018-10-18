
package com.libf.ws.bond;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.libf.ws.bond package. 
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

    private final static QName _Base64Binary_QNAME = new QName("http://WebXml.com.cn/", "base64Binary");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.libf.ws.bond
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetSmallImageByteResponse }
     * 
     */
    public GetSmallImageByteResponse createGetSmallImageByteResponse() {
        return new GetSmallImageByteResponse();
    }

    /**
     * Create an instance of {@link GetSmallImage }
     * 
     */
    public GetSmallImage createGetSmallImage() {
        return new GetSmallImage();
    }

    /**
     * Create an instance of {@link GetSmallImageResponse }
     * 
     */
    public GetSmallImageResponse createGetSmallImageResponse() {
        return new GetSmallImageResponse();
    }

    /**
     * Create an instance of {@link GetSmallImageByte }
     * 
     */
    public GetSmallImageByte createGetSmallImageByte() {
        return new GetSmallImageByte();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link byte[]}{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebXml.com.cn/", name = "base64Binary")
    public JAXBElement<byte[]> createBase64Binary(byte[] value) {
        return new JAXBElement<byte[]>(_Base64Binary_QNAME, byte[].class, null, ((byte[]) value));
    }

}
