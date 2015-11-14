package fisw

class Proyecto {
    String nombre;
    static hasMany = [usuarios:UsuarioProyecto,areas:AreaProyecto];
    static constraints = {
    }
}
