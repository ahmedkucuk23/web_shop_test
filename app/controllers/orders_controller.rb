class OrdersController < ApplicationController
  def create
    teddy = Teddy.find(params[:teddy_id])

    order.update(checkout_session_id: session.id)

  end


end
