package simple.login

class UserController {
  def index() { }

  def login = {
    if(params.username == "user" && params.password == "user") {
      session.user = "user"
		} else {
			flash.message = "Login failed"
    }
      redirect(action: 'index')
    }

	def logout = {
			session.user = null
			redirect(action: 'index')
	}
}
