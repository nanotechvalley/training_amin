class AddColumnInArticles < ActiveRecord::Migration
  def change
    add_column :articles, :rating, :integer
  end
end
