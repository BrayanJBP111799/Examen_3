
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexionBD {
//////////////////////////////////////////////////////////////Conexion BRAYAN

private static final String ipAddress = "localhost"; //nota: localhost= 127.0.0.1     
private static final String dbName = "BoxGames"; //Nombre de tu base de datos
private static final String user = "Brayanjbs";//Nombre del usuario que utilizas en SQL SERVER
private static final String password = "progra2019";//Contraseña con el que ingresar al SQL Server
private static final String service = "1433";


//////////////////////////////////////////////////////////////Conexion STEVEN
//    
//    private static final String ipAddress = "localhost"; //nota: localhost= 127.0.0.1
//    private static final String dbName = "Usuarios"; //Nombre de tu base de datos
//    private static final String user = "StevenZiga";//Nombre del usuario que utilizas en SQL SERVER
//    private static final String password = "progra";//Contraseña con el que ingresar al SQL Server
//    private static final String service = "1433";
//
//    public static Connection getConnection() throws SQLException {
//        try {
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//
//        //Primera opcion
//         String url = "jdbc:sqlserver://"+ipAddress+"\\SQLEXPRESS;databaseName="+dbName;
//        
//        return DriverManager.getConnection(url, user, password);
//        //----------------------------------------------------------------//
//    }
//
//    public static void main(String[] args) throws SQLException {
//        Connection con = conexionBD.getConnection();
//        if (con != null) {
//            System.out.println("Conexión exitosa");
//        }
//    }
//}
    
//////////////////////////////////////////////////////////// Conexion JOSE
    //private static final String dbName = "BoxGames"; //Nombre de tu base de datos
    //private static final String user = "sa";//Nombre del usuario que utilizas en SQL SERVER
    //private static final String password = "progra";//Contraseña con el que ingresar al SQL Server

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String url = "jdbc:sqlserver://"+ipAddress+"\\SQLEXPRESS;databaseName="+dbName;
        //String url = "jdbc:sqlserver://JOSEALTA;databaseName=" + dbName;
        return DriverManager.getConnection(url, user, password);

    }

    public static void main(String[] args) throws SQLException {
        Connection con = conexionBD.getConnection();
        if (con != null) {
            System.out.println("Conexión exitosa");
        }
    }
}
