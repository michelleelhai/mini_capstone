class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.html.erb'
  end
  def show
    @product = Product.find_by(id: params[:id])
    render 'show.html.erb'
  end
  def new
    render 'new.html.erb'
  end
  def create
   @product = Product.create({
    name: params[:name],
    description: params[:description],
    price: params[:price],
    supplier_id: 1})
   @product.save
   redirect_to "/products"
  end
  def edit
    @product = Product.find_by(id: params[:id])
    render 'edit.html.erb'
  end
end
