
package gameWS;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para ArrayOfJuegosMesa complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="ArrayOfJuegosMesa"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="JuegosMesa" type="{http://schemas.datacontract.org/2004/07/BoxGames_Services}JuegosMesa" maxOccurs="unbounded" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ArrayOfJuegosMesa", namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", propOrder = {
    "juegosMesa"
})
public class ArrayOfJuegosMesa {

    @XmlElement(name = "JuegosMesa", nillable = true)
    protected List<JuegosMesa> juegosMesa;

    /**
     * Gets the value of the juegosMesa property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the juegosMesa property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getJuegosMesa().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link JuegosMesa }
     * 
     * 
     */
    public List<JuegosMesa> getJuegosMesa() {
        if (juegosMesa == null) {
            juegosMesa = new ArrayList<JuegosMesa>();
        }
        return this.juegosMesa;
    }

}
