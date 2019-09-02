class Api::ProductsController < ApplicationController
  def index
    @all = Product.all
    render 'index.json.jb'
  end
  def show
    findby = params[:id]
    @product = Product.find_by(id:findby)
    

    render 'show.json.jb'
  end
  def create
    @product = Product.new(
      name: params[:name], 
      price: params[:price].to_i, 
      image_url: params[:image_url], 
      description: params[:description]
    )
    @product.save
    render 'create.json.jb'
  end
  def update
     @product = Product.find_by(id: params[:id])
     @product.name = params[:name] || @product.name
     @product.price = params[:price] || @product.price
     @product.image_url = params[:image_url] || @product.image_url
     @product.description = params[:description] || @product.description
     @product.save
     render 'update.json.jb'

  end 
  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "you destoyed it you monster"}
  end

end
