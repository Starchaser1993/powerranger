package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DatabaseConnection {
    private static final Logger LOGGER = Logger.getLogger(DatabaseConnection.class.getName());
    private static final String URL = "jdbc:sqlserver://localhost:1433;databaseName=PowerRangers;encrypt=false;";
    //private static final String USER = System.getenv("DB_USER"); // Obtener de variables de entorno
    //private static final String PASSWORD = System.getenv("DB_PASSWORD");
    private static final String USER ="SA" ;
    private static final String PASSWORD ="Elgatoloco3514." ;

    public static Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            LOGGER.log(Level.SEVERE, "Error: no se encontró el driver.", e);
            throw new SQLException("No se encontró el driver JDBC.", e);
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error al conectar a la base de datos.", e);
            throw e;
        }
        return connection;
    }
}


