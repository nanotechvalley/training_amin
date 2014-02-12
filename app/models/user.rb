class User < ActiveRecord::Base
  has_many :articles
  has_many :products
  belongs_to :country
  has_many :comments, :dependent => :destroy
  has_many :categories
  


	def valid_first_name

	validates :first_name, :presence => :true, :uniqueness => :true,
				    		:length => { :maximum => 25},
				    		:format => {:with => "/[a-zA-Z\s]+$/"}
	end

	def valid_last_name

	validates :last_name, :presence => :true, :uniqueness => :true,
							:length => { :maximum => 25},
							:format => {:with => "/[a-zA-Z\s]+$/"}

	end

	
	def valid_email
	validates :email, :presence => :true, :uniqueness => :true,
							:format => {:with => "/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i"}
	end
	
  
end

