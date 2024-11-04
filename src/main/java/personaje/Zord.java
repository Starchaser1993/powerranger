package personaje;

public class Zord {
    private int codZord; // PK
    private int codRanger; // FK
    private String nombreZord;
    private String tipoZord;
    private String categoriaZord;
    private String correoUsuario; // FK

    // Getters and Setters
    public int getCodZord() { return codZord; }
    public void setCodZord(int codZord) { this.codZord = codZord; }

    public int getCodRanger() { return codRanger; }
    public void setCodRanger(int codRanger) { this.codRanger = codRanger; }

    public String getNombreZord() { return nombreZord; }
    public void setNombreZord(String nombreZord) { this.nombreZord = nombreZord; }

    public String getTipoZord() { return tipoZord; }
    public void setTipoZord(String tipoZord) { this.tipoZord = tipoZord; }

    public String getCategoriaZord() { return categoriaZord; }
    public void setCategoriaZord(String categoriaZord) { this.categoriaZord = categoriaZord; }

    public String getCorreoUsuario() { return correoUsuario; }
    public void setCorreoUsuario(String correoUsuario) { this.correoUsuario = correoUsuario; }
}


