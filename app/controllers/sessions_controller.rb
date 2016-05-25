class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email:params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      #log in user and redirect to show page
    else
      # Create some sort oof error message
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
  end
  
end