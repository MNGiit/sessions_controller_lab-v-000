class SessionsController < ApplicationController
  def create
    # session[:name] = params[:name] # sets session[:name] if :name was given
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name] # sets session[:name] if :name was given
    else
      redirect_to action: "new" # could be written as redirect_to(action: 'new') as well
    end
  end
  
  def new
  end
  
  def destroy
    
  end
end