class SessionsController < ApplicationController
  def new
    redirect_to root_path if current_user
  end
  
  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = "Neispravna adresa e-pošte ili lozinka."
      redirect_to login_path
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:notice] = "Odjavili ste se."
    redirect_to login_path
  end
end