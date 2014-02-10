class ProductCategory < ActiveRecord::Base
  class Assembly 
  
  
  
    belongs_to :product
    belongs_to :category
    