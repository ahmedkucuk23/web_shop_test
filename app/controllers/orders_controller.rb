class OrdersController < ApplicationController
  def create
    teddy = Teddy.find(params[:teddy_id])
    order  = Order.create!(teddy: teddy, teddy_sku: teddy.sku, amount: teddy.price, state: 'pending', user: current_user)

    order.update(checkout_session_id: session.id)

  end


end
