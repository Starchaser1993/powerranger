package temporada;

import java.util.Date;

public class Episodio {
    private int codEpisodio; // PK
    private int codTemp; // FK
    private String tituloEp;
    private int nroEp;
    private Date fechaEmi;
    private String correoUsuario; // FK

    // Getters and Setters
    public int getCodEpisodio() { return codEpisodio; }
    public void setCodEpisodio(int codEpisodio) { this.codEpisodio = codEpisodio; }

    public int getCodTemp() { return codTemp; }
    public void setCodTemp(int codTemp) { this.codTemp = codTemp; }

    public String getTituloEp() { return tituloEp; }
    public void setTituloEp(String tituloEp) { this.tituloEp = tituloEp; }

    public int getNroEp() { return nroEp; }
    public void setNroEp(int nroEp) { this.nroEp = nroEp; }

    public Date getFechaEmi() { return fechaEmi; }
    public void setFechaEmi(Date fechaEmi) { this.fechaEmi = fechaEmi; }

    public String getCorreoUsuario() { return correoUsuario; }
    public void setCorreoUsuario(String correoUsuario) { this.correoUsuario = correoUsuario; }
}

