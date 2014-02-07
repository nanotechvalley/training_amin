class RenameColumnInArticles < ActiveRecord::Migration
  def change
    rename_column :articles, :body, :descriptions
  end
end
