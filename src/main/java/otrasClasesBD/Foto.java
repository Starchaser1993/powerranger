package otrasClasesBD;

public class Foto {
    private int codFoto; // Identificador único de la foto
    private int codRanger; // Código del ranger asociado (opcional)
    private int codZord; // Código del zord asociado (opcional)
    private int codVillano; // Código del villano asociado (opcional)
    private int codEquipo; // Código del equipo asociado (opcional)
    private int codMegazord; // Código del megazord asociado (opcional)
    private String urlFoto; // URL de la foto

    // Constructor vacío
    public Foto() {
    }

    // Constructor con parámetros
    public Foto(int codFoto, int codRanger, int codZord, int codVillano, int codEquipo, int codMegazord, String urlFoto) {
        this.codFoto = codFoto;
        this.codRanger = codRanger;
        this.codZord = codZord;
        this.codVillano = codVillano;
        this.codEquipo = codEquipo;
        this.codMegazord = codMegazord;
        this.urlFoto = urlFoto;
    }

    // Getters y Setters
    public int getCodFoto() {
        return codFoto;
    }

    public void setCodFoto(int codFoto) {
        this.codFoto = codFoto;
    }

    public int getCodRanger() {
        return codRanger;
    }

    public void setCodRanger(int codRanger) {
        this.codRanger = codRanger;
    }

    public int getCodZord() {
        return codZord;
    }

    public void setCodZord(int codZord) {
        this.codZord = codZord;
    }

    public int getCodVillano() {
        return codVillano;
    }

    public void setCodVillano(int codVillano) {
        this.codVillano = codVillano;
    }

    public int getCodEquipo() {
        return codEquipo;
    }

    public void setCodEquipo(int codEquipo) {
        this.codEquipo = codEquipo;
    }

    public int getCodMegazord() {
        return codMegazord;
    }

    public void setCodMegazord(int codMegazord) {
        this.codMegazord = codMegazord;
    }

    public String getUrlFoto() {
        return urlFoto;
    }

    public void setUrlFoto(String urlFoto) {
        this.urlFoto = urlFoto;
    }

    // Método toString para depuración
    @Override
    public String toString() {
        return "Foto{" +
                "codFoto=" + codFoto +
                ", codRanger=" + codRanger +
                ", codZord=" + codZord +
                ", codVillano=" + codVillano +
                ", codEquipo=" + codEquipo +
                ", codMegazord=" + codMegazord +
                ", urlFoto='" + urlFoto + '\'' +
                '}';
    }
}
