class SessionsController < ApplicationController
  def create
    # session[:name] = params[:name] # sets session[:name] if :name was given
    if params[:name]
      session[:name] = params[:name]
    else
      
    end
  end
end