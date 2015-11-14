package fisw

class Area {
    String nombre;
    static hasMany = [usuarios:UsuarioArea, proyectos:AreaProyecto];
    static constraints = {
    }
}
