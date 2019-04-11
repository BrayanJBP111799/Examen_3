
package gameWS;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for JuegosMesa complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="JuegosMesa"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="CantidadJuego" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="DescripcionJuego" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="ID_JuegoMesa" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="ImagenJuego" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="NombreJuego" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="PrecioJuego" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="TipoJuego" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "JuegosMesa", namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", propOrder = {
    "cantidadJuego",
    "descripcionJuego",
    "idJuegoMesa",
    "imagenJuego",
    "nombreJuego",
    "precioJuego",
    "tipoJuego"
})
public class JuegosMesa {

    @XmlElement(name = "CantidadJuego")
    protected Integer cantidadJuego;
    @XmlElementRef(name = "DescripcionJuego", namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", type = JAXBElement.class, required = false)
    protected JAXBElement<String> descripcionJuego;
    @XmlElement(name = "ID_JuegoMesa")
    protected Integer idJuegoMesa;
    @XmlElementRef(name = "ImagenJuego", namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", type = JAXBElement.class, required = false)
    protected JAXBElement<String> imagenJuego;
    @XmlElementRef(name = "NombreJuego", namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", type = JAXBElement.class, required = false)
    protected JAXBElement<String> nombreJuego;
    @XmlElement(name = "PrecioJuego")
    protected Integer precioJuego;
    @XmlElementRef(name = "TipoJuego", namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", type = JAXBElement.class, required = false)
    protected JAXBElement<String> tipoJuego;

    /**
     * Gets the value of the cantidadJuego property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getCantidadJuego() {
        return cantidadJuego;
    }

    /**
     * Sets the value of the cantidadJuego property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setCantidadJuego(Integer value) {
        this.cantidadJuego = value;
    }

    /**
     * Gets the value of the descripcionJuego property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getDescripcionJuego() {
        return descripcionJuego;
    }

    /**
     * Sets the value of the descripcionJuego property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setDescripcionJuego(JAXBElement<String> value) {
        this.descripcionJuego = value;
    }

    /**
     * Gets the value of the idJuegoMesa property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getIDJuegoMesa() {
        return idJuegoMesa;
    }

    /**
     * Sets the value of the idJuegoMesa property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setIDJuegoMesa(Integer value) {
        this.idJuegoMesa = value;
    }

    /**
     * Gets the value of the imagenJuego property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getImagenJuego() {
        return imagenJuego;
    }

    /**
     * Sets the value of the imagenJuego property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setImagenJuego(JAXBElement<String> value) {
        this.imagenJuego = value;
    }

    /**
     * Gets the value of the nombreJuego property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getNombreJuego() {
        return nombreJuego;
    }

    /**
     * Sets the value of the nombreJuego property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setNombreJuego(JAXBElement<String> value) {
        this.nombreJuego = value;
    }

    /**
     * Gets the value of the precioJuego property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getPrecioJuego() {
        return precioJuego;
    }

    /**
     * Sets the value of the precioJuego property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setPrecioJuego(Integer value) {
        this.precioJuego = value;
    }

    /**
     * Gets the value of the tipoJuego property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getTipoJuego() {
        return tipoJuego;
    }

    /**
     * Sets the value of the tipoJuego property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setTipoJuego(JAXBElement<String> value) {
        this.tipoJuego = value;
    }

}
