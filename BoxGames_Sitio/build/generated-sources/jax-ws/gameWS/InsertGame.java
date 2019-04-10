
package gameWS;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para anonymous complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="id_cliente" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="id_juego" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="precio" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
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
    "idCliente",
    "idJuego",
    "precio"
})
@XmlRootElement(name = "InsertGame")
public class InsertGame {

    @XmlElement(name = "id_cliente")
    protected Integer idCliente;
    @XmlElementRef(name = "id_juego", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<String> idJuego;
    protected Integer precio;

    /**
     * Obtiene el valor de la propiedad idCliente.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getIdCliente() {
        return idCliente;
    }

    /**
     * Define el valor de la propiedad idCliente.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setIdCliente(Integer value) {
        this.idCliente = value;
    }

    /**
     * Obtiene el valor de la propiedad idJuego.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getIdJuego() {
        return idJuego;
    }

    /**
     * Define el valor de la propiedad idJuego.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setIdJuego(JAXBElement<String> value) {
        this.idJuego = value;
    }

    /**
     * Obtiene el valor de la propiedad precio.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getPrecio() {
        return precio;
    }

    /**
     * Define el valor de la propiedad precio.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setPrecio(Integer value) {
        this.precio = value;
    }

}