package fisw



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
class UsuarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def springSecurityService
    @Secured(['ROLE_ADMIN','ROLE_DIREC'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Usuario.list(params), model:[usuarioInstanceCount: Usuario.count()]
    }
    @Secured("IS_AUTHENTICATED_ANONYMOUSLY")
    def show(Usuario usuarioInstance) {
        //respond usuarioInstance
        respond springSecurityService.currentUser
    }
    @Secured("IS_AUTHENTICATED_ANONYMOUSLY")
    def create() {
        respond new Usuario(params)
    }

    @Transactional
    @Secured("IS_AUTHENTICATED_ANONYMOUSLY")
    def save(Usuario usuarioInstance) {
        if (usuarioInstance == null) {
            notFound()
            return
        }

        if (usuarioInstance.hasErrors()) {
            respond usuarioInstance.errors, view:'create'
            return
        }

        usuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuarioInstance.id])
                redirect usuarioInstance
            }
            '*' { respond usuarioInstance, [status: CREATED] }
        }
    }
    @Secured(['ROLE_ADMIN','ROLE_DIREC'])
    def edit(Usuario usuarioInstance) {
        respond usuarioInstance
    }

    @Secured(['ROLE_USER'])
    def editPerfil() {
        respond springSecurityService.currentUser
    }
    @Transactional
    @Secured(['ROLE_USER'])
    def updatePerfil() {
        //usuarioInstance = springSecurityService.currentUser
        def usuario = new Usuario(params)//creo un nuevo usuario a partir de los parametros recibidos
        def log_usr = springSecurityService.currentUser

        if (usuario == null) { //verifico que no sea nulo
            notFound()
            return
        }

        if (usuario.hasErrors()) {//hago la validación de si es o no correcto el usuario
            respond usuario.errors, view:'edit'
            return
        }

        log_usr.properties = params
        log_usr.save flush:true //guardo

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Usuario.label', default: 'Usuario'), log_usr.id])
                redirect action:"show" //redirecciono a show
                //redirect log_usr //redirecciono a show
            }
            '*'{ respond usuario, [status: OK] }
        }
    }

    @Transactional

    @Secured(['ROLE_ADMIN','ROLE_DIREC'])
    def update(Usuario usuarioInstance) {
        if (usuarioInstance == null) {
            notFound()
            return
        }

        if (usuarioInstance.hasErrors()) {
            respond usuarioInstance.errors, view:'edit'
            return
        }

        usuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Usuario.label', default: 'Usuario'), usuarioInstance.id])
                redirect usuarioInstance
            }
            '*'{ respond usuarioInstance, [status: OK] }
        }
    }

    @Transactional
    @Secured(['ROLE_ADMIN','ROLE_DIREC'])
    def delete(Usuario usuarioInstance) {

        if (usuarioInstance == null) {
            notFound()
            return
        }

        usuarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Usuario.label', default: 'Usuario'), usuarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
    @Secured("IS_AUTHENTICATED_ANONYMOUSLY")
    def ListarCargos(){
        render(template:"ListoCargos", layout:"ajax")
    }
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
