class Product < ActiveRecord::Base

#attr_accessible :name, :price, :description

 belongs_to :user
 has_many :categories
 belongs_to :category
 
 has_many :categories, :through => :product_categories
  #join table

 has_many :product_categories

 validates :products, :numericality = :true



end
