class ChangeColumnInCountries < ActiveRecord::Migration
  def change
    change_column :countries, :code, :string
    change_column :comments, :body, :text
  end
end
