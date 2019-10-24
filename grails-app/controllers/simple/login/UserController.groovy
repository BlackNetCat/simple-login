package simple.login

class UserController {

    def index() { }

    def login = {
        if(params.username == "user" && params.password == "user") {
            flash.message = "Welcome back, ${params.username}."


        } else {
            flash.message = "Login failed"
        }
        redirect(action: 'index')
    }
}
