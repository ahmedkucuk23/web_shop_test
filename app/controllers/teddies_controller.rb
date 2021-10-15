class TeddiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @teddys = Teddy.all
  end

  def show
  end

  def new
    @teddy = Teddy.new
  end

  def edit
  end

   def create
    @teddy = Teddy.new
    if @teddy.save
      redirect_to @teddy, notice: "Product was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def add_to_cart
  #   session[:cart] << params[:id]
  #   redirect_to teddies_path
  # end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to teddies_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to teddies_path
  end

  private
  def initialize_session
    session[:cart] ||= []
  end
end
