class Product < ActiveRecord::Base
  belongs_to :category
  
  attr_accessible :active, :alternative_price, 
                  :availability, :position, :price,
                  :title, :image, :category_id, :link
  
  validates :title, presence: true
  
  default_scope order('position ASC')
  
  with_options if: "active?" do |active_product|
    active_product.validates :price, presence: true
    active_product.validates :category_id, presence: true
  end
  
  mount_uploader :image, ProductImageUploader
    
  
  def toggle_active!
    self.update_attributes!(active: !self.active?)
  end
  
  def toggle_availability!
    self.update_attributes!(availability: !self.availability?)
  end
  
end
