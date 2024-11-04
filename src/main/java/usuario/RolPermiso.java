package usuario;

public class RolPermiso {
    private int codRol; // PK
    private int codPermiso; // PK
    private String descripcion;

    // Getters and Setters
    public int getCodRol() { return codRol; }
    public void setCodRol(int codRol) { this.codRol = codRol; }

    public int getCodPermiso() { return codPermiso; }
    public void setCodPermiso(int codPermiso) { this.codPermiso = codPermiso; }

    public String getDescripcion() { return descripcion; }
    public void setDescripcion(String descripcion) { this.descripcion = descripcion; }
}


