
package gameWS;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for CarritoCompra complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="CarritoCompra"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="ID_CarritoCompra" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="ID_Cliente" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="ID_JuegoMesa" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "CarritoCompra", namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", propOrder = {
    "idCarritoCompra",
    "idCliente",
    "idJuegoMesa"
})
public class CarritoCompra {

    @XmlElement(name = "ID_CarritoCompra")
    protected Integer idCarritoCompra;
    @XmlElement(name = "ID_Cliente")
    protected Integer idCliente;
    @XmlElementRef(name = "ID_JuegoMesa", namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", type = JAXBElement.class, required = false)
    protected JAXBElement<String> idJuegoMesa;

    /**
     * Gets the value of the idCarritoCompra property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getIDCarritoCompra() {
        return idCarritoCompra;
    }

    /**
     * Sets the value of the idCarritoCompra property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setIDCarritoCompra(Integer value) {
        this.idCarritoCompra = value;
    }

    /**
     * Gets the value of the idCliente property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getIDCliente() {
        return idCliente;
    }

    /**
     * Sets the value of the idCliente property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setIDCliente(Integer value) {
        this.idCliente = value;
    }

    /**
     * Gets the value of the idJuegoMesa property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getIDJuegoMesa() {
        return idJuegoMesa;
    }

    /**
     * Sets the value of the idJuegoMesa property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setIDJuegoMesa(JAXBElement<String> value) {
        this.idJuegoMesa = value;
    }

}
