package controller;

import bean.juegos;
import bean.usuarios;
import static com.opensymphony.xwork2.Action.SUCCESS;
import gamesWS.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.model_services;

public class controller_services {
    
    //----------------Insert de Usuarios
    private usuarios u = new usuarios();

    public usuarios getU() {
        return u;
    }

    public void setU(usuarios u) {
        this.u = u;
    }
    
    public String insertUsuario() throws SQLException{
        model_services da = new model_services();
        da.insertU(getU());

        return SUCCESS;
    }
    
    //----------------Enviar email registro    
    public String proccessRegister(){
        model_services da = new model_services();
        da.sendEmail(getU());

        return SUCCESS;
    }
    
    //----------------Enviar email contraseña  
    public String proccessChangeP(){
        model_services da = new model_services();
        da.sendEmailPassword(getU());

        return SUCCESS;
    }
    
    //---------------Actualizar usuario
    private int idU;

    public int getIdU() {
        return idU;
    }

    public void setIdU(int idU) {
        this.idU = idU;
    }
    
    public String updateUsuario() throws SQLException{
        model_services da = new model_services(); 
        da.updateU(getU(), idU);

        return SUCCESS;
    }
    
    public String returnToPage(){
        return SUCCESS;
    }
    
    //---------------Buscar el login
    public String Login() throws SQLException{
        String result = "";
        model_services da = new model_services();
        
        if("sinregistro".equals(da.consulta_inicio(getU()))){
            result = "sinregistro";
        }else if("correcto".equals(da.consulta_inicio(getU()))){
            result = "correcto";
        }else if("incorrecto".equals(da.consulta_inicio(getU()))){
            result = "incorrecto";
        }
        
        return result;
    }  
    
    //----------------Select de Juegos
    private juegos j = new juegos();
    
    private List<JuegosMesa> juegos_list = new ArrayList<>();

    public juegos getJ() {
        return j;
    }

    public void setJ(juegos j) {
        this.j = j;
    }

    public List<JuegosMesa> getJuegos_list() {
        return juegos_list;
    }

    public void setJuegos_list(List<JuegosMesa> juegos_list) {
        this.juegos_list = juegos_list;
    }


    public String selectJuegos(){
        model_services ms = new model_services();
        juegos_list = ms.selectJuegos().getJuegosMesa();
        
        for (int i = 0; i < juegos_list.size(); i++) {
           System.out.println(juegos_list.get(i).getNombreJuego().getValue()); 
        }
        
        
        return SUCCESS;
    }
    
}


