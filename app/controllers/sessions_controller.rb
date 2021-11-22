class SessionsController < ApplicationController
  def new
  end
<<<<<<< HEAD

  def create
     user = User.find_by(mail: params[:session][:index])
     if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to user
=======
  skip_before_action :verify_authenticity_token

  def create
    render 'new'
  end

  def create
     user = User.find_by(mail: params[:session][:mail])
     if user && User.authenticate(params[:session][:password])
        log_in student
        redirect_to student
>>>>>>> ac0191d6c6c3fff9f36c34a7219cdb0f25924722
     else
        render 'new'
     end
   end
<<<<<<< HEAD

   def destroy
   	log_out
   	redirect_to root_url
   end

=======
>>>>>>> ac0191d6c6c3fff9f36c34a7219cdb0f25924722
 end

