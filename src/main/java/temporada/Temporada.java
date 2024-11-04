package temporada;

import java.util.Date;

public class Temporada {
    private int codTemp; // PK
    private int codEpisodio; // FK
    private int codVillano; // FK
    private int codEquipo; // FK
    private String tituloTemp;
    private int nroTemp;
    private Date fechaEstreno;
    private int nroEpisodios;
    private String tematicaTemp;
    private String correoUsuario; // FK
    private int numeroVisita;

    // Getters and Setters
    public int getCodTemp() { return codTemp; }
    public void setCodTemp(int codTemp) { this.codTemp = codTemp; }

    public int getCodEpisodio() { return codEpisodio; }
    public void setCodEpisodio(int codEpisodio) { this.codEpisodio = codEpisodio; }

    public int getCodVillano() { return codVillano; }
    public void setCodVillano(int codVillano) { this.codVillano = codVillano; }

    public int getCodEquipo() { return codEquipo; }
    public void setCodEquipo(int codEquipo) { this.codEquipo = codEquipo; }

    public String getTituloTemp() { return tituloTemp; }
    public void setTituloTemp(String tituloTemp) { this.tituloTemp = tituloTemp; }

    public int getNroTemp() { return nroTemp; }
    public void setNroTemp(int nroTemp) { this.nroTemp = nroTemp; }

    public Date getFechaEstreno() { return fechaEstreno; }
    public void setFechaEstreno(Date fechaEstreno) { this.fechaEstreno = fechaEstreno; }

    public int getNroEpisodios() { return nroEpisodios; }
    public void setNroEpisodios(int nroEpisodios) { this.nroEpisodios = nroEpisodios; }

    public String getTematicaTemp() { return tematicaTemp; }
    public void setTematicaTemp(String tematicaTemp) { this.tematicaTemp = tematicaTemp; }

    public String getCorreoUsuario() { return correoUsuario; }
    public void setCorreoUsuario(String correoUsuario) { this.correoUsuario = correoUsuario; }

    public int getNumeroVisita() { return numeroVisita; }
    public void setNumeroVisita(int numeroVisita) { this.numeroVisita = numeroVisita; }
}
