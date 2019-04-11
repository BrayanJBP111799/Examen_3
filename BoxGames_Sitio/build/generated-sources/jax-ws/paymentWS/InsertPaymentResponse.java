
package paymentWS;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="InsertPaymentResult" type="{http://schemas.datacontract.org/2004/07/Payment_Services}Pagos" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "insertPaymentResult"
})
@XmlRootElement(name = "InsertPaymentResponse")
public class InsertPaymentResponse {

    @XmlElementRef(name = "InsertPaymentResult", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<Pagos> insertPaymentResult;

    /**
     * Gets the value of the insertPaymentResult property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Pagos }{@code >}
     *     
     */
    public JAXBElement<Pagos> getInsertPaymentResult() {
        return insertPaymentResult;
    }

    /**
     * Sets the value of the insertPaymentResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Pagos }{@code >}
     *     
     */
    public void setInsertPaymentResult(JAXBElement<Pagos> value) {
        this.insertPaymentResult = value;
    }

}
