class SessionsController < ApplicationController
  def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end
  
  def new
  end
  
  def destroy
    session.delete(:name) # leaves session[:name] nil if it was not set
                          # clears session[:name] if it was set
                          # session.clear works too
  end
end