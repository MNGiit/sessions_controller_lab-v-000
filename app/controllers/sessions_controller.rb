class SessionsController < ApplicationController
  def create
    session[:name] = params[:name] # sets session[:name] if :name was given
  end
end