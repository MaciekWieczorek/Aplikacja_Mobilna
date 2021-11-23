class SessionsController < ApplicationController
  def new
  end
  skip_before_action :verify_authenticity_token

  def create
    render 'new'
  end

  def create
     user = User.find_by(mail: params[:session][:mail])
     if user && User.authenticate(params[:session][:password])
        log_in student
        redirect_to student
     else
        render 'new'
     end
   end
 end

