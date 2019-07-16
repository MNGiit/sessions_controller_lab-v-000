class SessionsController < ApplicationController
  def create
    # session[:name] = params[:name] # sets session[:name] if :name was given
  #  if params[:name] && !params[:name].empty?
  #    session[:name] = params[:name] # sets session[:name] if :name was given
  #  elsif session[:name]
  #    redirect_to "/"
  #  else
  #    redirect_to action: "new" # could be written as redirect_to(action: 'new') as well
  #  end
    if params[:name].empty? || !params[:name]
      redirect_to(action: "new")
    else  
      redirect_to(controller: "application", action: "hello")
    end  
    
  end
  
  def new
  end
  
  def destroy
    session.delete(:name) # leaves session[:name] nil if it was not set
                          # clears session[:name] if it was set
                          # session.clear works too
  end
end