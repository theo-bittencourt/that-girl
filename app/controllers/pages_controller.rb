class PagesController < ApplicationController
  protect_from_forgery :except => [:about_us_post]
  
  def about_us_post
    redirect_to :about_us
  end
  
  def about_us
  end
  
end
