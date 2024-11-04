package personaje;

public class Villano {
    private int codVillano; // PK
    private int codTemp; // FK
    private int codEquipo; // FK
    private String nombreVil;
    private String tipoVil;
    private int epiDebut;
    private String armaVil;
    private String categoriaVil;
    private String correoUsuario; // FK

    // Getters and Setters
    public int getCodVillano() { return codVillano; }
    public void setCodVillano(int codVillano) { this.codVillano = codVillano; }

    public int getCodTemp() { return codTemp; }
    public void setCodTemp(int codTemp) { this.codTemp = codTemp; }

    public int getCodEquipo() { return codEquipo; }
    public void setCodEquipo(int codEquipo) { this.codEquipo = codEquipo; }

    public String getNombreVil() { return nombreVil; }
    public void setNombreVil(String nombreVil) { this.nombreVil = nombreVil; }

    public String getTipoVil() { return tipoVil; }
    public void setTipoVil(String tipoVil) { this.tipoVil = tipoVil; }

    public int getEpiDebut() { return epiDebut; }
    public void setEpiDebut(int epiDebut) { this.epiDebut = epiDebut; }

    public String getArmaVil() { return armaVil; }
    public void setArmaVil(String armaVil) { this.armaVil = armaVil; }

    public String getCategoriaVil() { return categoriaVil; }
    public void setCategoriaVil(String categoriaVil) { this.categoriaVil = categoriaVil; }

    public String getCorreoUsuario() { return correoUsuario; }
    public void setCorreoUsuario(String correoUsuario) { this.correoUsuario = correoUsuario; }
}


