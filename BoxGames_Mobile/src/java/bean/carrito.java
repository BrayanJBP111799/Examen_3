
package bean;

import java.io.Serializable;

public class carrito implements Serializable{
    
    public int IDCarito;
    public int IDCliente;
    public int IDJuego;

    public carrito() {
    }

    public carrito(int IDCarito, int IDCliente, int IDJuego) {
        this.IDCarito = IDCarito;
        this.IDCliente = IDCliente;
        this.IDJuego = IDJuego;
    }

    public int getIDCarito() {
        return IDCarito;
    }

    public void setIDCarito(int IDCarito) {
        this.IDCarito = IDCarito;
    }

    public int getIDCliente() {
        return IDCliente;
    }

    public void setIDCliente(int IDCliente) {
        this.IDCliente = IDCliente;
    }

    public int getIDJuego() {
        return IDJuego;
    }

    public void setIDJuego(int IDJuego) {
        this.IDJuego = IDJuego;
    }
            
            
    
}
