class ClientsController < ApplicationController
    before_action :set_client, only: [:show, :edit, :update, :destroy]
    before_action :require_client, only: [:edit, :update]
    before_action :require_same_client, only: [:edit, :update, :destroy]
    def show
        @articles = @client.articles.paginate(page: params[:page], per_page: 3)
      end

      def index
        @clients = Client.paginate(page: params[:page], per_page: 3)
      end
   
      def new
      @client = Client.new
    end


    def edit
        @client = Client.find(params[:id])
      end
    
      def update
        @client = Client.find(params[:id])
        if @client.update(client_params)
          flash[:notice] = "Your account information was successfully updated"
          redirect_to @client
        else
          render 'edit'
        end
      end

    def create
        @client = Client.new(client_params)
        if @client.save
            session[:client_id] = @client.id
          flash[:notice] = "Welcome to the Alpha Blog #{@client.username}, you have successfully signed up"
          redirect_to articles_path
        else
          render 'new'
        end
      end

      def destroy
        @client.destroy
        session[:client_id] = nil if @client == current_client
        flash[:notice] = "Account and all associated articles successfully deleted"
        redirect_to articles_path
      end
    
      private
      def client_params
        params.require(:client).permit(:username, :email, :password)
      end


  def set_client
    @client = Client.find(params[:id])
  end
  
  
  def require_same_client
      if current_client != @client && !current_client.admin?
    flash[:alert] = "You can only edit or delete your own account"
      redirect_to @client
    end
  end

  end