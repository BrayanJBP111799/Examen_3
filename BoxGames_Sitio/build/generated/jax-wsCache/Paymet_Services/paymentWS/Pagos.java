
package paymentWS;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Pagos complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Pagos"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="Codigo" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="Fecha_Ven" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="ID_Cliente" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="ID_Pago" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="Nom_Tarjeta" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="Num_Tarjeta" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="TotalPagar" type="{http://www.w3.org/2001/XMLSchema}double" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Pagos", namespace = "http://schemas.datacontract.org/2004/07/Payment_Services", propOrder = {
    "codigo",
    "fechaVen",
    "idCliente",
    "idPago",
    "nomTarjeta",
    "numTarjeta",
    "totalPagar"
})
public class Pagos {

    @XmlElement(name = "Codigo")
    protected Integer codigo;
    @XmlElementRef(name = "Fecha_Ven", namespace = "http://schemas.datacontract.org/2004/07/Payment_Services", type = JAXBElement.class, required = false)
    protected JAXBElement<String> fechaVen;
    @XmlElement(name = "ID_Cliente")
    protected Integer idCliente;
    @XmlElement(name = "ID_Pago")
    protected Integer idPago;
    @XmlElementRef(name = "Nom_Tarjeta", namespace = "http://schemas.datacontract.org/2004/07/Payment_Services", type = JAXBElement.class, required = false)
    protected JAXBElement<String> nomTarjeta;
    @XmlElement(name = "Num_Tarjeta")
    protected Integer numTarjeta;
    @XmlElement(name = "TotalPagar")
    protected Double totalPagar;

    /**
     * Gets the value of the codigo property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getCodigo() {
        return codigo;
    }

    /**
     * Sets the value of the codigo property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setCodigo(Integer value) {
        this.codigo = value;
    }

    /**
     * Gets the value of the fechaVen property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getFechaVen() {
        return fechaVen;
    }

    /**
     * Sets the value of the fechaVen property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setFechaVen(JAXBElement<String> value) {
        this.fechaVen = value;
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
     * Gets the value of the idPago property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getIDPago() {
        return idPago;
    }

    /**
     * Sets the value of the idPago property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setIDPago(Integer value) {
        this.idPago = value;
    }

    /**
     * Gets the value of the nomTarjeta property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getNomTarjeta() {
        return nomTarjeta;
    }

    /**
     * Sets the value of the nomTarjeta property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setNomTarjeta(JAXBElement<String> value) {
        this.nomTarjeta = value;
    }

    /**
     * Gets the value of the numTarjeta property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getNumTarjeta() {
        return numTarjeta;
    }

    /**
     * Sets the value of the numTarjeta property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setNumTarjeta(Integer value) {
        this.numTarjeta = value;
    }

    /**
     * Gets the value of the totalPagar property.
     * 
     * @return
     *     possible object is
     *     {@link Double }
     *     
     */
    public Double getTotalPagar() {
        return totalPagar;
    }

    /**
     * Sets the value of the totalPagar property.
     * 
     * @param value
     *     allowed object is
     *     {@link Double }
     *     
     */
    public void setTotalPagar(Double value) {
        this.totalPagar = value;
    }

}
