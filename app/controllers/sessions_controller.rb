class SessionsController < ApplicationController
  def create
    session[:name] = params[:name]
  end
end