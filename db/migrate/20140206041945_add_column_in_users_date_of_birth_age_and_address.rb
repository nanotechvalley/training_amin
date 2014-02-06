class AddColumnInUsersDateOfBirthAgeAndAddress < ActiveRecord::Migration
  def change
    add_column :users, :dateofbirth, :datetime 
    add_column :users, :age, :integer
    add_column :users, :address, :text
    
  end
end
