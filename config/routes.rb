Rails.application.routes.draw do
  namespace :api do
    get "/store_url" => "products#allproducts"
  end
end
