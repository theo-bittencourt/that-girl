class Category < ActiveRecord::Base
  has_many :products
  
  attr_accessible :position, :title, :active
  
  validates :title, presence: true
  validates :title, uniqueness: true
  
  default_scope order("position ASC")
  
  def active_products
    self.products.where(active: true)
  end
  
  def toggle_active!
    self.update_attributes!(active: !self.active?)
  end
  
end
