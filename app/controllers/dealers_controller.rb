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
    private
    def dealer_params
        params.require(:dealer).permit(:name, address, contact)
    end
end
