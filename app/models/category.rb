class Category < ActiveRecord::Base
  has_many :products
  belongs_to :user
  belongs_to :product
  
  has_many :products, :through => :product_category #join table

 has_many :product_categories

end
