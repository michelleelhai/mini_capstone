class Api::ProductsController < ApplicationController
  def allproducts
    @all = Product.all
    render 'allproducts.json.jb'
  end
end
