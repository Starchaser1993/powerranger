package equipo;

public class Equipo {
    private int codEquipo; // PK
    private int codMegazord; // FK
    private int codRanger; // FK
    private int codVillano; // FK
    private int codTemp; // FK
    private int nroRangers;
    private String nombreEquipo;
    private String correoUsuario; // FK

    // Getters and Setters
    public int getCodEquipo() { return codEquipo; }
    public void setCodEquipo(int codEquipo) { this.codEquipo = codEquipo; }

    public int getCodMegazord() { return codMegazord; }
    public void setCodMegazord(int codMegazord) { this.codMegazord = codMegazord; }

    public int getCodRanger() { return codRanger; }
    public void setCodRanger(int codRanger) { this.codRanger = codRanger; }

    public int getCodVillano() { return codVillano; }
    public void setCodVillano(int codVillano) { this.codVillano = codVillano; }

    public int getCodTemp() { return codTemp; }
    public void setCodTemp(int codTemp) { this.codTemp = codTemp; }

    public int getNroRangers() { return nroRangers; }
    public void setNroRangers(int nroRangers) { this.nroRangers = nroRangers; }

    public String getNombreEquipo() { return nombreEquipo; }
    public void setNombreEquipo(String nombreEquipo) { this.nombreEquipo = nombreEquipo; }

    public String getCorreoUsuario() { return correoUsuario; }
    public void setCorreoUsuario(String correoUsuario) { this.correoUsuario = correoUsuario; }
}

