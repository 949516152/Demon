
package com.libf.ws.compiling;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.libf.ws.compiling package.
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

    private final static QName _TransWords_QNAME = new QName("http://webservice.libf.com/", "transWords");
    private final static QName _TransWordsResponse_QNAME = new QName("http://webservice.libf.com/", "transWordsResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.libf.ws.compiling
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link TransWordsResponse }
     * 
     */
    public TransWordsResponse createTransWordsResponse() {
        return new TransWordsResponse();
    }

    /**
     * Create an instance of {@link TransWords }
     * 
     */
    public TransWords createTransWords() {
        return new TransWords();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link TransWords }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice.libf.com/", name = "transWords")
    public JAXBElement<TransWords> createTransWords(TransWords value) {
        return new JAXBElement<TransWords>(_TransWords_QNAME, TransWords.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link TransWordsResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice.libf.com/", name = "transWordsResponse")
    public JAXBElement<TransWordsResponse> createTransWordsResponse(TransWordsResponse value) {
        return new JAXBElement<TransWordsResponse>(_TransWordsResponse_QNAME, TransWordsResponse.class, null, value);
    }

}
