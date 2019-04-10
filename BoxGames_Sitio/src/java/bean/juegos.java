
package bean;

import java.io.Serializable;

public class juegos implements Serializable{
    
    public int IDJuegos;
    public String nombreJuego;
    public String tipoJuego;
    public int precioJuego;
    public String descJuego;
    public String imgJuego;       
    public int cantJuego;

    public juegos() {
    }

    public juegos(int IDJuegos, String nombreJuego, String tipoJuego, int precioJuego, String descJuego, String imgJuego, int cantJuego) {
        this.IDJuegos = IDJuegos;
        this.nombreJuego = nombreJuego;
        this.tipoJuego = tipoJuego;
        this.precioJuego = precioJuego;
        this.descJuego = descJuego;
        this.imgJuego = imgJuego;
        this.cantJuego = cantJuego;
    }
    
    public int getIDJuegos() {
        return IDJuegos;
    }

    public void setIDJuegos(int IDJuegos) {
        this.IDJuegos = IDJuegos;
    }

    public String getNombreJuego() {
        return nombreJuego;
    }

    public void setNombreJuego(String nombreJuego) {
        this.nombreJuego = nombreJuego;
    }

    public String getTipoJuego() {
        return tipoJuego;
    }

    public void setTipoJuego(String tipoJuego) {
        this.tipoJuego = tipoJuego;
    }

    public int getPrecioJuego() {
        return precioJuego;
    }

    public void setPrecioJuego(int precioJuego) {
        this.precioJuego = precioJuego;
    }

    public String getDescJuego() {
        return descJuego;
    }

    public void setDescJuego(String descJuego) {
        this.descJuego = descJuego;
    }

    public String getImgJuego() {
        return imgJuego;
    }

    public void setImgJuego(String imgJuego) {
        this.imgJuego = imgJuego;
    }

    public int getCantJuego() {
        return cantJuego;
    }

    public void setCantJuego(int cantJuego) {
        this.cantJuego = cantJuego;
    }
    
    
    
}
