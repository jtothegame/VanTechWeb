class ModifyArticlesTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles, :name, :string
    add_column :articles, :title, :string
    add_column :articles, :description, :string
    add_column :articles, :url, :string
    add_column :articles, :urlToImage, :string
    add_column :articles, :publishedAt, :datetime
  end
end
