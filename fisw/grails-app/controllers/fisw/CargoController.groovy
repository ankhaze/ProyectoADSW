package fisw

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured("IS_AUTHENTICATED_ANONYMOUSLY")
@Transactional(readOnly = true)
class CargoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Cargo.list(params), model: [cargoInstanceCount: Cargo.count()]
    }

    def show(Cargo cargoInstance) {
        respond cargoInstance
    }
    def show2() {
        [cargo: Cargo.get(params.id)]
    }
    @Secured("IS_AUTHENTICATED_ANONYMOUSLY")
    def create() {
        respond new Cargo(params)
    }
    def createCargo() {
        respond new Cargo(params)
    }
    @Transactional
    def save(Cargo cargoInstance) {
        if (cargoInstance == null) {
            notFound()
            return
        }

        if (cargoInstance.hasErrors()) {
            respond cargoInstance.errors, view: 'create'
            return
        }

        cargoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cargo.label', default: 'Cargo'), cargoInstance.id])
                redirect cargoInstance
            }
            '*' { respond cargoInstance, [status: CREATED] }
        }
    }
    @Transactional
    def save2(Cargo cargoInstance) {
        if (cargoInstance == null) {
            notFound()
            return
        }

        if (cargoInstance.hasErrors()) {
            respond cargoInstance.errors, view: 'create'
            return
        }

        cargoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cargo.label', default: 'Cargo'), cargoInstance.id])
                render(template:"ListoCargos", layout:"ajax")
            }
            '*' { respond cargoInstance, [status: CREATED] }
        }
    }
    def edit(Cargo cargoInstance) {
        respond cargoInstance
    }

    @Transactional
    def update(Cargo cargoInstance) {
        if (cargoInstance == null) {
            notFound()
            return
        }

        if (cargoInstance.hasErrors()) {
            respond cargoInstance.errors, view: 'edit'
            return
        }

        cargoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cargo.label', default: 'Cargo'), cargoInstance.id])
                redirect cargoInstance
            }
            '*' { respond cargoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Cargo cargoInstance) {

        if (cargoInstance == null) {
            notFound()
            return
        }

        cargoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cargo.label', default: 'Cargo'), cargoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cargo.label', default: 'Cargo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
