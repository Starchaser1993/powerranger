package usuario;

public class Usuario {
    private String correoUsuario; // PK
    private String password;
    private int codRol; // FK

    // Getters and Setters
    public String getCorreoUsuario() { return correoUsuario; }
    public void setCorreoUsuario(String correoUsuario) { this.correoUsuario = correoUsuario; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public int getCodRol() { return codRol; }
    public void setCodRol(int codRol) { this.codRol = codRol; }
}

