class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end
  
  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
    
    if @order.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end
  
  private
  
  def order_params
    params.require(:order).permit(:customer_id, :products)
  end
end
