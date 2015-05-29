class OrdersController < ApplicationController
  
  def index
    @orders = Order.where(:customer_id == params[:id])
  end
  
  def show
    @order = Order.find(params[:id])
  end
  
  
  private
  
  def order_params
    params.require(:order).permit(:customer_id, :products)
  end
end
