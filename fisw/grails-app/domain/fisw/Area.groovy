package fisw

class Area {
    String nombre;
    static hasMany = [usuarios:Usuario, proyectos:Proyecto];
    static constraints = {
    }
}
