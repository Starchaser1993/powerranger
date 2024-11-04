package personaje;

public class Ranger {
    private int codRanger; // PK
    private int codZord; // FK
    private int codEquipo; // FK
    private String nombreRan;
    private String colorRan;
    private String poderRan;
    private String actorRan;
    private String armaRan;
    private String morpher;
    private String categoriaRan;
    private String correoUsuario; // FK
    private int codColor; // FK

    // Getters and Setters
    public int getCodRanger() { return codRanger; }
    public void setCodRanger(int codRanger) { this.codRanger = codRanger; }

    public int getCodZord() { return codZord; }
    public void setCodZord(int codZord) { this.codZord = codZord; }

    public int getCodEquipo() { return codEquipo; }
    public void setCodEquipo(int codEquipo) { this.codEquipo = codEquipo; }

    public String getNombreRan() { return nombreRan; }
    public void setNombreRan(String nombreRan) { this.nombreRan = nombreRan; }

    public String getColorRan() { return colorRan; }
    public void setColorRan(String colorRan) { this.colorRan = colorRan; }

    public String getPoderRan() { return poderRan; }
    public void setPoderRan(String poderRan) { this.poderRan = poderRan; }

    public String getActorRan() { return actorRan; }
    public void setActorRan(String actorRan) { this.actorRan = actorRan; }

    public String getArmaRan() { return armaRan; }
    public void setArmaRan(String armaRan) { this.armaRan = armaRan; }

    public String getMorpher() { return morpher; }
    public void setMorpher(String morpher) { this.morpher = morpher; }

    public String getCategoriaRan() { return categoriaRan; }
    public void setCategoriaRan(String categoriaRan) { this.categoriaRan = categoriaRan; }

    public String getCorreoUsuario() { return correoUsuario; }
    public void setCorreoUsuario(String correoUsuario) { this.correoUsuario = correoUsuario; }

    public int getCodColor() { return codColor; }
    public void setCodColor(int codColor) { this.codColor = codColor; }
}


