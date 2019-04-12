
package gameWS;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
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
 *         &lt;element name="DeleteGames_byCustomerResult" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
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
    "deleteGamesByCustomerResult"
})
@XmlRootElement(name = "DeleteGames_byCustomerResponse")
public class DeleteGamesByCustomerResponse {

    @XmlElement(name = "DeleteGames_byCustomerResult")
    protected Integer deleteGamesByCustomerResult;

    /**
     * Gets the value of the deleteGamesByCustomerResult property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getDeleteGamesByCustomerResult() {
        return deleteGamesByCustomerResult;
    }

    /**
     * Sets the value of the deleteGamesByCustomerResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setDeleteGamesByCustomerResult(Integer value) {
        this.deleteGamesByCustomerResult = value;
    }

}
