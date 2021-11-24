class SessionsController < ApplicationController
  def new
   
  end

  def create
    # byebug
    session[:name] = params[:name]

    if session[:name].blank?
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
    
  end
end
