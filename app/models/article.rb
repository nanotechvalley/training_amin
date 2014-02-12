class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :dependent => :destroy

 validates :articles, :presence = :true, 
  
end
