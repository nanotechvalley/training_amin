class Country < ActiveRecord::Base
  has_many :users


  validates :country, :presence => :true
  validate :valid_code

  def valid_code
  	if self.code => "ID" || self.code => "USA" || self.code => "CHN "
	  return true
	else
	  return false
	end 	
  
  					  
  
end	
