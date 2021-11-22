module SessionsHelper
<<<<<<< HEAD
	def log_in(user)
  		session[:user_id] = user.id
	end

	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:user_id)
		@current_user = nil
=======
	def log_in(student)
  		session[:student_id] = student.id
>>>>>>> ac0191d6c6c3fff9f36c34a7219cdb0f25924722
	end
end
