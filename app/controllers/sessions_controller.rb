class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] != "" && params[:name]
      session[:name] = params[:name]
      redirect_to new_secret_path
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'sessions', action: 'new'
  end

end
