package equipo;

public class Megazord {
    private int codMegazord; // PK
    private int codEquipo; // FK
    private String nombreMz;
    private int cantZords;
    private String correoUsuario; // FK

    // Getters and Setters
    public int getCodMegazord() { return codMegazord; }
    public void setCodMegazord(int codMegazord) { this.codMegazord = codMegazord; }

    public int getCodEquipo() { return codEquipo; }
    public void setCodEquipo(int codEquipo) { this.codEquipo = codEquipo; }

    public String getNombreMz() { return nombreMz; }
    public void setNombreMz(String nombreMz) { this.nombreMz = nombreMz; }

    public int getCantZords() { return cantZords; }
    public void setCantZords(int cantZords) { this.cantZords = cantZords; }

    public String getCorreoUsuario() { return correoUsuario; }
    public void setCorreoUsuario(String correoUsuario) { this.correoUsuario = correoUsuario; }
}
