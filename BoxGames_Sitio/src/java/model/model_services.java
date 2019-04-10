
package model;

import bean.usuarios;
import gameWS.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class model_services {
    
//////////////////////////////////////////////////////////PARTE LOCAL
    private String insertsql = "INSERT INTO Register_Usuario(ID_Cliente, Nombre_Completo, Telefono, Correo, FechaNacimiento, Password) VALUES (?, ?, ?, ?, ?, ?);";
    public boolean insertU(usuarios u) throws SQLException{
        boolean resultado = false;
        
        Connection con = conexionBD.getConnection();
        PreparedStatement ps = con.prepareStatement(insertsql);
        ps.setInt(1, u.getCedula());
        ps.setString(2, u.getNombre_completo());        
        ps.setString(3, u.getTelefono());
        ps.setString(4, u.getCorreo());
        ps.setString(5, u.getFechanacimiento());
        ps.setString(6, u.getPassword());
        
        if (ps.executeUpdate() == 1) {
            resultado = true;
            ps.close();
            con.close();
        }
        
        return resultado;
    }
    
    public int sendEmail(usuarios u){
        String subject = "BoxGames - Registro";
        String to = u.getCorreo();
        String link = "http://localhost:8080/BoxGames_Sitio/registro.jsp";
        String body = "<div style='background-color: #166A8F; padding:20px'>" +
                "<div class='logo-right' align='right' id='emb-email-header'><img style = 'display: block;height: auto;width: 100%;border: 0;max-width: 227px;' src='https://i1.createsend1.com/resize/ti/t/73/D4E/3AE/temp/logo2_blanco_peq.png' alt=''></div>" +
                "<div style = 'mso-line-height-rule: exactly;mso-text-raise: 4px;'>" +
                "<p class='size-40' style='Margin-top: 0;Margin-bottom: 20px;font-family: oswald,avenir next condensed,arial narrow,ms ui gothic,sans-serif;font-size: 32px;line-height: 40px;text-align: center;' lang='x-size-40'><span class='font-oswald'><strong><span style = 'color:#ffffff'> &#161;BIENVENIDO!</span></strong></span></p>" +
                "</div>" +
                "<div class='divider' style='display: block;font-size: 2px;line-height: 2px;Margin-left: auto;Margin-right: auto;width: 40px;background-color: #ccc;Margin-bottom: 20px;'>&nbsp;</div>" +
                "<div style = 'Margin-left: 20px;Margin-right: 20px;' align='center'>" +
                "<img style = 'border: 0;display: block;height: auto;width: 100%;max-width: 128px;' alt='' width='128' src='https://i1.createsend1.com/resize/ti/t/73/D4E/3AE/temp/strategy.png'>" +
                "</div>" +
                "<div style = 'Margin-left: 20px;Margin-right: 20px;' >" +
                "<p class='size-22' style='Margin-top: 0;Margin-bottom: 0;font-family: montserrat,dejavu sans,verdana,sans-serif;font-size: 18px;line-height: 26px;text-align: center;' lang='x-size-22'><span class='font-montserrat'><span style = 'color:#ffffff' > Hemos recibido una solicitud para un registro.</span></span></p><p class='size-22' style='Margin-top: 20px;Margin-bottom: 20px;font-family: montserrat,dejavu sans,verdana,sans-serif;font-size: 18px;line-height: 26px;text-align: center;' lang='x-size-22'><span class='font-montserrat'><span style = 'color:#ffffff' > Accede al siguiente link para continuar con el proceso</span></span></p>" +
                "</div>" +
                "<div style = 'Margin-left: 20px;Margin-right: 20px;' >" +
                "</div>" +
                "<div style = 'Margin-left: 20px;Margin-right: 20px;' >" +
                "<h2 style = 'Margin-top: 0;Margin-bottom: 16px;font-style: normal;font-weight: normal;color: #e31212;font-size: 26px;line-height: 34px;font-family: montserrat,dejavu sans,verdana,sans-serif;text-align: center;' ><span> <a style = 'color:#FC3D49' href = "+link+">Registrarse</a> </ span ></ span ></ h2 >" +
                "</ div >" +
                "</ div > ";
        try{
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.user", "progravcuc@gmail.com");
            props.setProperty("mail.smtp.auth", "true");
            
            Session session = Session.getDefaultInstance(props);
            
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("progravcuc@gmail.com", "BoxGames"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setContent(body, "text/html");
            
            Transport t = session.getTransport("smtp");
            t.connect("progravcuc@gmail.com", "cursoCUC2019");
            t.sendMessage(message, message.getAllRecipients());
            
            t.close();
            
            return 0;
        }catch (Exception e){
            e.printStackTrace();
            return -1;
        }
    }
    
    public int sendEmailPassword(usuarios u){
        String subject = "BoxGames - Cambio de Contraseña";
        String to = u.getCorreo();
        String link = "http://localhost:8080/BoxGames_Sitio/change_password_form.action?idU="+u.getCedula();
        String body = "<div style='background-color: #166A8F; padding:20px'>" +
                "<div class='logo-right' align='right' id='emb-email-header'><img style = 'display: block;height: auto;width: 100%;border: 0;max-width: 227px;' src='https://i1.createsend1.com/resize/ti/t/73/D4E/3AE/temp/logo2_blanco_peq.png' alt=''></div>" +
                "<div style = 'mso-line-height-rule: exactly;mso-text-raise: 4px;'>" +
                "<p class='size-40' style='Margin-top: 0;Margin-bottom: 20px;font-family: oswald,avenir next condensed,arial narrow,ms ui gothic,sans-serif;font-size: 32px;line-height: 40px;text-align: center;' lang='x-size-40'><span class='font-oswald'><strong><span style = 'color:#ffffff'> &#161;HOLA!</span></strong></span></p>" +
                "</div>" +
                "<div class='divider' style='display: block;font-size: 2px;line-height: 2px;Margin-left: auto;Margin-right: auto;width: 40px;background-color: #ccc;Margin-bottom: 20px;'>&nbsp;</div>" +
                "<div style = 'Margin-left: 20px;Margin-right: 20px;' align='center'>" +
                "<img style = 'border: 0;display: block;height: auto;width: 100%;max-width: 128px;' alt='' width='128' src='https://i1.createsend1.com/resize/ti/t/73/D4E/3AE/temp/strategy.png'>" +
                "</div>" +
                "<div style = 'Margin-left: 20px;Margin-right: 20px;' >" +
                "<p class='size-22' style='Margin-top: 0;Margin-bottom: 0;font-family: montserrat,dejavu sans,verdana,sans-serif;font-size: 18px;line-height: 26px;text-align: center;' lang='x-size-22'><span class='font-montserrat'><span style = 'color:#ffffff' > Hemos recibido una solicitud para restablecer tu contraseña.</span></span></p><p class='size-22' style='Margin-top: 20px;Margin-bottom: 20px;font-family: montserrat,dejavu sans,verdana,sans-serif;font-size: 18px;line-height: 26px;text-align: center;' lang='x-size-22'><span class='font-montserrat'><span style = 'color:#ffffff' > Accede al siguiente link para continuar con el proceso</span></span></p>" +
                "</div>" +
                "<div style = 'Margin-left: 20px;Margin-right: 20px;' >" +
                "</div>" +
                "<div style = 'Margin-left: 20px;Margin-right: 20px;' >" +
                "<h2 style = 'Margin-top: 0;Margin-bottom: 16px;font-style: normal;font-weight: normal;color: #e31212;font-size: 26px;line-height: 34px;font-family: montserrat,dejavu sans,verdana,sans-serif;text-align: center;' ><span> <a style = 'color:#FC3D49' href = "+link+">Cambiar Contraseña</a> </ span ></ span ></ h2 >" +
                "</ div >" +
                "</ div > ";
        try{
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.user", "progravcuc@gmail.com");
            props.setProperty("mail.smtp.auth", "true");
            
            Session session = Session.getDefaultInstance(props);
            
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("progravcuc@gmail.com", "BoxGames"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setContent(body, "text/html");
            
            Transport t = session.getTransport("smtp");
            t.connect("progravcuc@gmail.com", "cursoCUC2019");
            t.sendMessage(message, message.getAllRecipients());
            
            t.close();
            
            return 0;
        }catch (Exception e){
            e.printStackTrace();
            return -1;
        }
    }
    
    private String updatesql = "UPDATE Register_Usuario SET Password = ? WHERE ID_Cliente = ?;";
    public boolean updateU(usuarios u, int id) throws SQLException{
        boolean resultado = false;        
        Connection con = conexionBD.getConnection();
        PreparedStatement ps = con.prepareStatement(updatesql);
        ps.setString(1, u.getPassword());
        ps.setInt(2, id);
        
        if (ps.executeUpdate() == 1) {
            resultado = true;
            ps.close();
            con.close();
        }
        
        return resultado;
    }
    
    private String sql1 = "SELECT Correo, Password FROM Register_Usuario WHERE Correo = ?;";
    
    public String consulta_inicio(usuarios u) throws SQLException {
        String result = "";
        String mail = "";
        String pass = "";
        int cont = 0;
        Connection con = conexionBD.getConnection();
        PreparedStatement ps = con.prepareStatement(sql1);
        ps.setString(1, u.getCorreo());
        
        ResultSet res = ps.executeQuery();
        
        while (res.next()) {
            mail = res.getString(1);
            pass = res.getString(2);
            cont++;
        }
        
        if(cont!=0){
            if (u.getPassword().equals(pass) && u.getCorreo().equals(mail)) {
                result = "correcto";
            } else {
                result = "incorrecto";
            }
        }else if(cont==0){
            result = "sinregistro";
        }       
        
        ps.close();
        res.close();
        con.close();
        
        return result;
    }
    
    private String sql2 = "SELECT ID_Cliente, Nombre_Completo, Telefono, Correo FROM Register_Usuario WHERE Correo = ?;";
    
    public String consulta_session(usuarios u) throws SQLException {
        Connection con = conexionBD.getConnection();        
        PreparedStatement ps = con.prepareStatement(sql2);
        ps.setString(1, u.getCorreo());
        
        ResultSet res = ps.executeQuery();
        
        while (res.next()) {
            u.setCedula(res.getInt(1));
            u.setNombre_completo(res.getString(2));
            u.setTelefono(res.getString(3));
            u.setCorreo(res.getString(4));
        }
        
        return "exito";
    }
    
    public ArrayOfJuegosMesa selectJuegos(){
        
        GameService WebService = new GameService();
        
        return WebService.getBasicHttpBindingIGameService().selectGames();
    }
    
    public ArrayOfJuegosMesa selectOneGame(int id){
        
        GameService WebService = new GameService();
        
        return WebService.getBasicHttpBindingIGameService().searchGame(id);
    }
}

