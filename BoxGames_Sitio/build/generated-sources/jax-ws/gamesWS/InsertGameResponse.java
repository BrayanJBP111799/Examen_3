
package gamesWS;

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
 *         &lt;element name="InsertGameResult" type="{http://schemas.datacontract.org/2004/07/BoxGames_Services}CarritoCompra" minOccurs="0"/&gt;
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
    "insertGameResult"
})
@XmlRootElement(name = "InsertGameResponse")
public class InsertGameResponse {

    @XmlElementRef(name = "InsertGameResult", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<CarritoCompra> insertGameResult;

    /**
     * Gets the value of the insertGameResult property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link CarritoCompra }{@code >}
     *     
     */
    public JAXBElement<CarritoCompra> getInsertGameResult() {
        return insertGameResult;
    }

    /**
     * Sets the value of the insertGameResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link CarritoCompra }{@code >}
     *     
     */
    public void setInsertGameResult(JAXBElement<CarritoCompra> value) {
        this.insertGameResult = value;
    }

}
