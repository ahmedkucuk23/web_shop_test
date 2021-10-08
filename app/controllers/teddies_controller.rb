class TeddiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @teddies = Teddy.all
    @teddies = Teddy.order(params[:sort])

    if params[:newest]
      @teddies = Teddy.all.sort_by.reverse{|teddy| teddy.created_at}
    end

  end

  def add_to_cart
    session[:cart] << params[:id]
    redirect_to teddies_path
  end

  def show
    @teddy = Teddy.find(params[:id])
  end

  private
  def initialize_session
    session[:cart] ||= []
  end
end
