class Api::ProductsController < ApplicationController
  def allproducts
    @all = Product.all
    render 'allproducts.json.jb'
  end
  def oneproduct
    @oneproduct = Product.first
    render 'oneproduct.json.jb'
    
  end
end
