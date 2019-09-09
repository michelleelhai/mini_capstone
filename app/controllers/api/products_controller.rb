class Api::ProductsController < ApplicationController
  def index
    @products = Product.where("name iLIKE ?", "%#{params[:search]}%")
    if params[:discount]
      @products = Product.where("price >?", 100)
    end
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
      description: params[:description]
    )
    @product.save
    if @product.save
      render 'create.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def update
     @product = Product.find_by(id: params[:id])
     @product.name = params[:name] || @product.name
     @product.price = params[:price] || @product.price
     @product.description = params[:description] || @product.description
     @product.save
      if @product.save 
        render 'update.json.jb'
      else
        render json: {errors: @product.errors.full_messages},
          status: :unprocessable_entity
      end
  end 
  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "you destoyed it you monster"}
  end

end
