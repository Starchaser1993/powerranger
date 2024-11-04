package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:sqlserver://localhost:1433;databaseName=PowerRangers";
    private static final String USER = "admin@admin.cl";
    private static final String PASSWORD = "admin";

    public static Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            // Cargar el driver
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            // Obtener conexión
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.out.println("Error: no se encontró el driver.");
            e.printStackTrace();
            throw new SQLException("No se encontró el driver JDBC.");
        } catch (SQLException e) {
            System.out.println("Error al conectar a la base de datos.");
            e.printStackTrace();
            throw e; // Lanzar de nuevo la excepción para ser manejada en el servlet
        }
        return connection; // La conexión se retornará al lugar que la invoca
    }
}


