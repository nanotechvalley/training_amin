class User < ActiveRecord::Base
  has_many :articles
  has_many :products
  belongs_to :country
  has_many :comments
  has_many :categories
  
end
