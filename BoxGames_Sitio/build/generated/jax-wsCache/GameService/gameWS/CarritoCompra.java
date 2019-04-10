
package gameWS;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para CarritoCompra complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="CarritoCompra"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="ID_CarritoCompra" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="ID_Cliente" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="ID_JuegoMesa" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
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
    @XmlElement(name = "ID_JuegoMesa")
    protected Integer idJuegoMesa;

    /**
     * Obtiene el valor de la propiedad idCarritoCompra.
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
     * Define el valor de la propiedad idCarritoCompra.
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
     * Obtiene el valor de la propiedad idCliente.
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
     * Define el valor de la propiedad idCliente.
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

}
