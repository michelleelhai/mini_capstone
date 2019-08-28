Rails.application.routes.draw do
  namespace :api do
    get "/store_url" => "products#allproducts"
    get "/storeproduct_url" => "products#oneproduct"
  end
end
