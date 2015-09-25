module Api
  module V1
    class ProductsController < ApplicationController
      respond_to :json
      
      def index
        @products = Product.all
        respond_with @products
      end
      
      def show
        @product = Product.find(params[:id])
        respond_with @product
      end
      
      def create
        respond_with Product.create(product_params)
      end
      
      def update
        respond_with Product.update(params[:id], product_params)
      end
      
      def destroy
        respond_with Product.destroy(params[:id])
      end
      
      private
        # Never trust parameters from the scary internet, only allow the white list through.
        def product_params
          params.require(:product).permit(:name, :story, :image, :latitude, :longitude)
        end
    end
  end
end