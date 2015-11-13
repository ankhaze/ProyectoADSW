package fisw

class Proyecto {
    String nombre;
    static hasMany = [usuarios:Usuario,areas:Area];
    static belongsTo = [Area];
    static constraints = {
    }
}
