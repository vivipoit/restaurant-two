class OrdersController < ApplicationController
    
    def index
    end
    
    def new
        @order = Order.new
    end
    
    def create
        @order = Order.create(order_params)
        
        redirect_to order_path(@order), notice: 'Order was successfully created.'
    end
    
    def show
        @order = Order.find(params[:id])
    end
    
    private
    
    def order_params
        params.require(:order).permit(:table_id, :client_id, food_ids: [])
    end
    
end