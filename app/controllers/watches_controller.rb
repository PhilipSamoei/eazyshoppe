class WatchesController < ApplicationController
    def index
    @watches = Watch.order(created_at: :desc)
      render json: @watches
    end
  
    def create
      @watch = Watch.new(watch_params)
      if @watch.save
        render json: @watch
      else
        render json: @watch.errors, status: :unprocessable_entity
      end
    end
  
    def show
      @watch = Watch.find(params[:id])
      render json: @watch
    end
  
    def update
      @watch = Watch.find(params[:id])
      if @watch.update(watch_params)
        render json: @watch
      else
        render json: @watch.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @watch = Watch.find(params[:id])
      if @watch.destroy
        render json: @watch
      else
        head :no_content
      end
    end
  
    private
  
    def watch_params
      params.require(:watch).permit(:name, :brand, :price, :year,:image_url, :dealer_id)
    end
  end
  