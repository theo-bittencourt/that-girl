class NewsletterUser < ActiveRecord::Base
  attr_accessible :email, :name
  
  validates_presence_of :name, :email
  validates :email, email: true
end
