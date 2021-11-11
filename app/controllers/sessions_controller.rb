
class SessionsController < ApplicationController

    def new
    end
  
    def create
        client = Client.find_by(email: params[:session][:email].downcase)
        if client && client.authenticate(params[:session][:password])
          session[:client_id] = client.id
          flash[:notice] = "Logged in successfully"
          redirect_to client
        else
          flash.now[:alert] = "There was something wrong with your login details"
          render 'new'
        end
    end
  
    def destroy
        session[:client_id] = nil
    flash[:notice] = "Logged out"
    redirect_to root_path
    end
  
  end