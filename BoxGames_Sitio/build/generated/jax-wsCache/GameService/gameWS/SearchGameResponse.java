
package gameWS;

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
 *         &lt;element name="SearchGameResult" type="{http://schemas.datacontract.org/2004/07/BoxGames_Services}ArrayOfJuegosMesa" minOccurs="0"/&gt;
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
    "searchGameResult"
})
@XmlRootElement(name = "SearchGameResponse")
public class SearchGameResponse {

    @XmlElementRef(name = "SearchGameResult", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<ArrayOfJuegosMesa> searchGameResult;

    /**
     * Gets the value of the searchGameResult property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfJuegosMesa }{@code >}
     *     
     */
    public JAXBElement<ArrayOfJuegosMesa> getSearchGameResult() {
        return searchGameResult;
    }

    /**
     * Sets the value of the searchGameResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfJuegosMesa }{@code >}
     *     
     */
    public void setSearchGameResult(JAXBElement<ArrayOfJuegosMesa> value) {
        this.searchGameResult = value;
    }

}
