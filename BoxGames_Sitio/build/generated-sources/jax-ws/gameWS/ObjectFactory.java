
package gameWS;

import java.math.BigDecimal;
import java.math.BigInteger;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gameWS package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _ArrayOfJuegosMesa_QNAME = new QName("http://schemas.datacontract.org/2004/07/BoxGames_Services", "ArrayOfJuegosMesa");
    private final static QName _JuegosMesa_QNAME = new QName("http://schemas.datacontract.org/2004/07/BoxGames_Services", "JuegosMesa");
    private final static QName _CarritoCompra_QNAME = new QName("http://schemas.datacontract.org/2004/07/BoxGames_Services", "CarritoCompra");
    private final static QName _AnyType_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "anyType");
    private final static QName _AnyURI_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "anyURI");
    private final static QName _Base64Binary_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "base64Binary");
    private final static QName _Boolean_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "boolean");
    private final static QName _Byte_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "byte");
    private final static QName _DateTime_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "dateTime");
    private final static QName _Decimal_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "decimal");
    private final static QName _Double_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "double");
    private final static QName _Float_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "float");
    private final static QName _Int_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "int");
    private final static QName _Long_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "long");
    private final static QName _QName_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "QName");
    private final static QName _Short_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "short");
    private final static QName _String_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "string");
    private final static QName _UnsignedByte_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "unsignedByte");
    private final static QName _UnsignedInt_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "unsignedInt");
    private final static QName _UnsignedLong_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "unsignedLong");
    private final static QName _UnsignedShort_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "unsignedShort");
    private final static QName _Char_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "char");
    private final static QName _Duration_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "duration");
    private final static QName _Guid_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "guid");
    private final static QName _SelectGamesResponseSelectGamesResult_QNAME = new QName("http://tempuri.org/", "SelectGamesResult");
    private final static QName _SearchGameResponseSearchGameResult_QNAME = new QName("http://tempuri.org/", "SearchGameResult");
    private final static QName _InsertGameIdJuego_QNAME = new QName("http://tempuri.org/", "id_juego");
    private final static QName _InsertGameResponseInsertGameResult_QNAME = new QName("http://tempuri.org/", "InsertGameResult");
    private final static QName _DeleteGamesEstado_QNAME = new QName("http://tempuri.org/", "estado");
    private final static QName _JuegosMesaDescripcionJuego_QNAME = new QName("http://schemas.datacontract.org/2004/07/BoxGames_Services", "DescripcionJuego");
    private final static QName _JuegosMesaImagenJuego_QNAME = new QName("http://schemas.datacontract.org/2004/07/BoxGames_Services", "ImagenJuego");
    private final static QName _JuegosMesaNombreJuego_QNAME = new QName("http://schemas.datacontract.org/2004/07/BoxGames_Services", "NombreJuego");
    private final static QName _JuegosMesaTipoJuego_QNAME = new QName("http://schemas.datacontract.org/2004/07/BoxGames_Services", "TipoJuego");
    private final static QName _CarritoCompraIDJuegoMesa_QNAME = new QName("http://schemas.datacontract.org/2004/07/BoxGames_Services", "ID_JuegoMesa");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gameWS
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link SelectGames }
     * 
     */
    public SelectGames createSelectGames() {
        return new SelectGames();
    }

    /**
     * Create an instance of {@link SelectGamesResponse }
     * 
     */
    public SelectGamesResponse createSelectGamesResponse() {
        return new SelectGamesResponse();
    }

    /**
     * Create an instance of {@link ArrayOfJuegosMesa }
     * 
     */
    public ArrayOfJuegosMesa createArrayOfJuegosMesa() {
        return new ArrayOfJuegosMesa();
    }

    /**
     * Create an instance of {@link SearchGame }
     * 
     */
    public SearchGame createSearchGame() {
        return new SearchGame();
    }

    /**
     * Create an instance of {@link SearchGameResponse }
     * 
     */
    public SearchGameResponse createSearchGameResponse() {
        return new SearchGameResponse();
    }

    /**
     * Create an instance of {@link InsertGame }
     * 
     */
    public InsertGame createInsertGame() {
        return new InsertGame();
    }

    /**
     * Create an instance of {@link InsertGameResponse }
     * 
     */
    public InsertGameResponse createInsertGameResponse() {
        return new InsertGameResponse();
    }

    /**
     * Create an instance of {@link CarritoCompra }
     * 
     */
    public CarritoCompra createCarritoCompra() {
        return new CarritoCompra();
    }

    /**
     * Create an instance of {@link DeleteGames }
     * 
     */
    public DeleteGames createDeleteGames() {
        return new DeleteGames();
    }

    /**
     * Create an instance of {@link DeleteGamesResponse }
     * 
     */
    public DeleteGamesResponse createDeleteGamesResponse() {
        return new DeleteGamesResponse();
    }

    /**
     * Create an instance of {@link JuegosMesa }
     * 
     */
    public JuegosMesa createJuegosMesa() {
        return new JuegosMesa();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfJuegosMesa }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", name = "ArrayOfJuegosMesa")
    public JAXBElement<ArrayOfJuegosMesa> createArrayOfJuegosMesa(ArrayOfJuegosMesa value) {
        return new JAXBElement<ArrayOfJuegosMesa>(_ArrayOfJuegosMesa_QNAME, ArrayOfJuegosMesa.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link JuegosMesa }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", name = "JuegosMesa")
    public JAXBElement<JuegosMesa> createJuegosMesa(JuegosMesa value) {
        return new JAXBElement<JuegosMesa>(_JuegosMesa_QNAME, JuegosMesa.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CarritoCompra }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", name = "CarritoCompra")
    public JAXBElement<CarritoCompra> createCarritoCompra(CarritoCompra value) {
        return new JAXBElement<CarritoCompra>(_CarritoCompra_QNAME, CarritoCompra.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Object }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "anyType")
    public JAXBElement<Object> createAnyType(Object value) {
        return new JAXBElement<Object>(_AnyType_QNAME, Object.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "anyURI")
    public JAXBElement<String> createAnyURI(String value) {
        return new JAXBElement<String>(_AnyURI_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link byte[]}{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "base64Binary")
    public JAXBElement<byte[]> createBase64Binary(byte[] value) {
        return new JAXBElement<byte[]>(_Base64Binary_QNAME, byte[].class, null, ((byte[]) value));
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Boolean }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "boolean")
    public JAXBElement<Boolean> createBoolean(Boolean value) {
        return new JAXBElement<Boolean>(_Boolean_QNAME, Boolean.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Byte }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "byte")
    public JAXBElement<Byte> createByte(Byte value) {
        return new JAXBElement<Byte>(_Byte_QNAME, Byte.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "dateTime")
    public JAXBElement<XMLGregorianCalendar> createDateTime(XMLGregorianCalendar value) {
        return new JAXBElement<XMLGregorianCalendar>(_DateTime_QNAME, XMLGregorianCalendar.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "decimal")
    public JAXBElement<BigDecimal> createDecimal(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_Decimal_QNAME, BigDecimal.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Double }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "double")
    public JAXBElement<Double> createDouble(Double value) {
        return new JAXBElement<Double>(_Double_QNAME, Double.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Float }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "float")
    public JAXBElement<Float> createFloat(Float value) {
        return new JAXBElement<Float>(_Float_QNAME, Float.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "int")
    public JAXBElement<Integer> createInt(Integer value) {
        return new JAXBElement<Integer>(_Int_QNAME, Integer.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Long }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "long")
    public JAXBElement<Long> createLong(Long value) {
        return new JAXBElement<Long>(_Long_QNAME, Long.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link QName }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "QName")
    public JAXBElement<QName> createQName(QName value) {
        return new JAXBElement<QName>(_QName_QNAME, QName.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Short }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "short")
    public JAXBElement<Short> createShort(Short value) {
        return new JAXBElement<Short>(_Short_QNAME, Short.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "string")
    public JAXBElement<String> createString(String value) {
        return new JAXBElement<String>(_String_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Short }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "unsignedByte")
    public JAXBElement<Short> createUnsignedByte(Short value) {
        return new JAXBElement<Short>(_UnsignedByte_QNAME, Short.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Long }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "unsignedInt")
    public JAXBElement<Long> createUnsignedInt(Long value) {
        return new JAXBElement<Long>(_UnsignedInt_QNAME, Long.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigInteger }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "unsignedLong")
    public JAXBElement<BigInteger> createUnsignedLong(BigInteger value) {
        return new JAXBElement<BigInteger>(_UnsignedLong_QNAME, BigInteger.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "unsignedShort")
    public JAXBElement<Integer> createUnsignedShort(Integer value) {
        return new JAXBElement<Integer>(_UnsignedShort_QNAME, Integer.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "char")
    public JAXBElement<Integer> createChar(Integer value) {
        return new JAXBElement<Integer>(_Char_QNAME, Integer.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Duration }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "duration")
    public JAXBElement<Duration> createDuration(Duration value) {
        return new JAXBElement<Duration>(_Duration_QNAME, Duration.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "guid")
    public JAXBElement<String> createGuid(String value) {
        return new JAXBElement<String>(_Guid_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfJuegosMesa }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "SelectGamesResult", scope = SelectGamesResponse.class)
    public JAXBElement<ArrayOfJuegosMesa> createSelectGamesResponseSelectGamesResult(ArrayOfJuegosMesa value) {
        return new JAXBElement<ArrayOfJuegosMesa>(_SelectGamesResponseSelectGamesResult_QNAME, ArrayOfJuegosMesa.class, SelectGamesResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfJuegosMesa }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "SearchGameResult", scope = SearchGameResponse.class)
    public JAXBElement<ArrayOfJuegosMesa> createSearchGameResponseSearchGameResult(ArrayOfJuegosMesa value) {
        return new JAXBElement<ArrayOfJuegosMesa>(_SearchGameResponseSearchGameResult_QNAME, ArrayOfJuegosMesa.class, SearchGameResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "id_juego", scope = InsertGame.class)
    public JAXBElement<String> createInsertGameIdJuego(String value) {
        return new JAXBElement<String>(_InsertGameIdJuego_QNAME, String.class, InsertGame.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CarritoCompra }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "InsertGameResult", scope = InsertGameResponse.class)
    public JAXBElement<CarritoCompra> createInsertGameResponseInsertGameResult(CarritoCompra value) {
        return new JAXBElement<CarritoCompra>(_InsertGameResponseInsertGameResult_QNAME, CarritoCompra.class, InsertGameResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "estado", scope = DeleteGames.class)
    public JAXBElement<String> createDeleteGamesEstado(String value) {
        return new JAXBElement<String>(_DeleteGamesEstado_QNAME, String.class, DeleteGames.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", name = "DescripcionJuego", scope = JuegosMesa.class)
    public JAXBElement<String> createJuegosMesaDescripcionJuego(String value) {
        return new JAXBElement<String>(_JuegosMesaDescripcionJuego_QNAME, String.class, JuegosMesa.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", name = "ImagenJuego", scope = JuegosMesa.class)
    public JAXBElement<String> createJuegosMesaImagenJuego(String value) {
        return new JAXBElement<String>(_JuegosMesaImagenJuego_QNAME, String.class, JuegosMesa.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", name = "NombreJuego", scope = JuegosMesa.class)
    public JAXBElement<String> createJuegosMesaNombreJuego(String value) {
        return new JAXBElement<String>(_JuegosMesaNombreJuego_QNAME, String.class, JuegosMesa.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", name = "TipoJuego", scope = JuegosMesa.class)
    public JAXBElement<String> createJuegosMesaTipoJuego(String value) {
        return new JAXBElement<String>(_JuegosMesaTipoJuego_QNAME, String.class, JuegosMesa.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/BoxGames_Services", name = "ID_JuegoMesa", scope = CarritoCompra.class)
    public JAXBElement<String> createCarritoCompraIDJuegoMesa(String value) {
        return new JAXBElement<String>(_CarritoCompraIDJuegoMesa_QNAME, String.class, CarritoCompra.class, value);
    }

}
