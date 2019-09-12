class Api::OrdersController < ApplicationController

  # before_action :authenticate_user

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def index
    @orders = current_user.orders
    render 'index.json.jb'
  end

  def create
    product = Product.find(params[:product_id])
    calculated_subtotal = product.price * params[:quantity].to_i
    tax = calculated_subtotal * 0.09
    total = tax + calculated_subtotal

    @order = Order.new(
      product_id: params[:product_id],
      user_id: current_user.id, 
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: tax,
      total: total
    )
    if @order.save
      render 'show.json.jb'
    else 
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end

end