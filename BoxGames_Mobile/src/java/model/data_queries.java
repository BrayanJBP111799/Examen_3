
package model;

import bean.contact;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class data_queries {
    
    private String sql = "insert into mensajes(nombre, telefono, correo, mensaje) values(?, ?, ?, ?);";
    
    public boolean insertMensaje(contact c) throws SQLException {
        boolean resultado = false;

        Connection con = conexionBD.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, c.getName());
        ps.setInt(2, c.getPhone());
        ps.setString(3, c.getEmail());
        ps.setString(4, c.getMsj());

        if (ps.executeUpdate() == 1) {
            resultado = true;
            ps.close();
            con.close();
        }
       
        return resultado;
    }
}
