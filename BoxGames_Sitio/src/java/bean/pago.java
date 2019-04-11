
package bean;

import java.io.Serializable;

public class pago implements Serializable{
    
    public int IDPago;
    public int IDCliente;
    public int TotalPagar;
    public String NomTarjeta;
    public int NumTarjeta;
    public String FechaVen;
    public int Codigo;

    public pago() {
    }

    public pago(int IDPago, int IDCliente, int TotalPagar, String NomTarjeta, int NumTarjeta, String FechaVen, int Codigo) {
        this.IDPago = IDPago;
        this.IDCliente = IDCliente;
        this.TotalPagar = TotalPagar;
        this.NomTarjeta = NomTarjeta;
        this.NumTarjeta = NumTarjeta;
        this.FechaVen = FechaVen;
        this.Codigo = Codigo;
    }

    public int getIDPago() {
        return IDPago;
    }

    public void setIDPago(int IDPago) {
        this.IDPago = IDPago;
    }

    public int getIDCliente() {
        return IDCliente;
    }

    public void setIDCliente(int IDCliente) {
        this.IDCliente = IDCliente;
    }

    public int getTotalPagar() {
        return TotalPagar;
    }

    public void setTotalPagar(int TotalPagar) {
        this.TotalPagar = TotalPagar;
    }

    public String getNomTarjeta() {
        return NomTarjeta;
    }

    public void setNomTarjeta(String NomTarjeta) {
        this.NomTarjeta = NomTarjeta;
    }

    public int getNumTarjeta() {
        return NumTarjeta;
    }

    public void setNumTarjeta(int NumTarjeta) {
        this.NumTarjeta = NumTarjeta;
    }

    public String getFechaVen() {
        return FechaVen;
    }

    public void setFechaVen(String FechaVen) {
        this.FechaVen = FechaVen;
    }

    public int getCodigo() {
        return Codigo;
    }

    public void setCodigo(int Codigo) {
        this.Codigo = Codigo;
    }
    
    
    
}
