class PagesController < ApplicationController
  protect_from_forgery :except => [:about_us_post]
  
  def about_us
    @current_app_id = ENV['ABOUT_US_APP_ID']
  end
  
  def newsletter
    @newsletter_user = NewsletterUser.new
    @current_app_id = ENV['NEWSLETTER_APP_ID']
  end
  
end
