class ProductsController < ApplicationController
  
  def index
    @current_app_id = ENV['SHOP_APP_ID']
    @categories = Category.where(active: true)
  end
  
end
