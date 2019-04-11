
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
 *         &lt;element name="DeleteGames_fromCarritoResult" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
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
    "deleteGamesFromCarritoResult"
})
@XmlRootElement(name = "DeleteGames_fromCarritoResponse")
public class DeleteGamesFromCarritoResponse {

    @XmlElement(name = "DeleteGames_fromCarritoResult")
    protected Integer deleteGamesFromCarritoResult;

    /**
     * Gets the value of the deleteGamesFromCarritoResult property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getDeleteGamesFromCarritoResult() {
        return deleteGamesFromCarritoResult;
    }

    /**
     * Sets the value of the deleteGamesFromCarritoResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setDeleteGamesFromCarritoResult(Integer value) {
        this.deleteGamesFromCarritoResult = value;
    }

}
