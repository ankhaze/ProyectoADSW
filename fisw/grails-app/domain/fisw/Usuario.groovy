package fisw

class Usuario {
    Date fecha_registro;
    String nombre;
    String apellido;
    String estudio_pregrado;
    String estudio_postgrado;
    static hasMany = [fotos:Foto,cargos:Cargo,videos:Video,publicaciones:Publicacion,congresos:Congreso,reportes:Reporte,proyectos:Proyecto,tesis:Tesis];
    static belongsTo = Proyecto;
    static constraints = {
    }
}
