class ProductsController < ApplicationController
  
  def index
    @categories = Category.where(active: true)
  end
  
end
