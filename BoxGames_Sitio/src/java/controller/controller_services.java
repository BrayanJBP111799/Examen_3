package controller;

import bean.carrito;
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

//        for (int i = 0; i < juegos_list.size(); i++) {
//           System.out.println(juegos_list.get(i).getNombreJuego().getValue()); 
//        }       

        return SUCCESS;
    }
    
    //----------------Select de un Game
    private int id;
    
    private List<JuegosMesa> game_info = new ArrayList<>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<JuegosMesa> getGame_info() {
        return game_info;
    }

    public void setGame_info(List<JuegosMesa> game_info) {
        this.game_info = game_info;
    }

         
    public String selectUnJuego(){        
        model_services da = new model_services();
        game_info = da.selectOneGame(id).getJuegosMesa();        
        return SUCCESS;
    }    
    
    //----------------Insert al CARRITO
    private int id_cliente;
    
    private String game;
    
    private carrito c = new carrito();

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getGame() {
        return game;
    }

    public void setGame(String game) {
        this.game = game;
    }

    public carrito getC() {
        return c;
    }

    public void setC(carrito c) {
        this.c = c;
    }
    
    public String insertCarrito() {  
        String result="";
        try {
//            if (submitType.equals("updatedata")) {
//                model_services de = new model_services();
//                car_info = de.selectOneCar(id_vehiculo).getCar();
//                result = "reservation";
//            } else {
                model_services da = new model_services();
                da.insertCarrito(id_cliente, game);
                System.out.println(" ");
                result = "success";
//            }

        } catch (Exception e) {
            e.printStackTrace();
            result = "error";
        }

        return result;
    }
    
}


