package fisw
import com.fisw.*

class Usuario extends User{
    Date fecha_registro;
    String nombre;
    String apellido;
    String estudio_pregrado;
    String estudio_postgrado;
    static hasMany = [cargos:Cargo,multimedia:Multimedia,publicaciones:Publicacion,congresos:Congreso,reportes:Reporte,usproyectos:UsuarioProyecto,tesis:Tesis,usareas:UsuarioArea];
    static constraints = {
        fecha_registro blank: true
        nombre blank: true
        apellido blank: true
        estudio_pregrado blank: true
        estudio_postgrado blank: true
    }

    Usuario(String username, String password) {
        super(username, password)
    }
}
