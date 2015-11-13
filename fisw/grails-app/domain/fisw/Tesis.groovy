package fisw

class Tesis {
    String dir;
    String nombre;
    static hasMany = [comentarios:Comentario,usuarios:Usuario];
    static belongsTo = [Usuario];
    static constraints = {
    }
}
