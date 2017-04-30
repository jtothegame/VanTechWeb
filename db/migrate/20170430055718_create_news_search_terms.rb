class CreateNewsSearchTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :news_search_terms do |t|

      t.column :name, :string

      t.timestamps
    end
  end
end
