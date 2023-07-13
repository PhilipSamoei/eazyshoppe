class DealersController < ApplicationController
    def index
      @dealers = Dealer.all
      render json: @dealers
    end
  
    def show
      @dealer = Dealer.find(params[:id])
      render json: @dealer
    end
  
    def create
      @dealer = Dealer.new(dealer_params)
      if @dealer.save
        session[:dealer_id] = @dealer.id  # Store the dealer ID in the session
        render json: @dealer
      else
        render json: @dealer.errors, status: :unprocessable_entity
      end
    end
  
    def update
      @dealer = Dealer.find(params[:id])
      if @dealer.update(dealer_params)
        render json: @dealer
      else
        render json: @dealer.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @dealer = Dealer.find(params[:id])
      @dealer.destroy
      head :no_content
    end
  
    def login
      @dealer = Dealer.find_by(email: params[:email])
  
      if @dealer && @dealer.authenticate(params[:password])
        session[:dealer_id] = @dealer.id  # Store the dealer ID in the session upon successful login
        render json: @dealer
      else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
      end
    end
  
    def logout
      session[:dealer_id] = nil  # Clear the dealer ID from the session upon logout
      head :no_content
    end
  
    private
  
    def dealer_params
      params.require(:dealer).permit(:name, :address, :contact, :email, :password, :password_confirmation)
    end
  end
  