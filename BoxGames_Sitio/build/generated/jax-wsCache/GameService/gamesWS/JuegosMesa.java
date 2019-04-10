
package gamesWS;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para JuegosMesa complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
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
     * Obtiene el valor de la propiedad cantidadJuego.
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
     * Define el valor de la propiedad cantidadJuego.
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
     * Obtiene el valor de la propiedad descripcionJuego.
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
     * Define el valor de la propiedad descripcionJuego.
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
     * Obtiene el valor de la propiedad idJuegoMesa.
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
     * Define el valor de la propiedad idJuegoMesa.
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
     * Obtiene el valor de la propiedad imagenJuego.
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
     * Define el valor de la propiedad imagenJuego.
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
     * Obtiene el valor de la propiedad nombreJuego.
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
     * Define el valor de la propiedad nombreJuego.
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
     * Obtiene el valor de la propiedad precioJuego.
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
     * Define el valor de la propiedad precioJuego.
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
     * Obtiene el valor de la propiedad tipoJuego.
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
     * Define el valor de la propiedad tipoJuego.
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
