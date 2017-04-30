class CreateEventsSearchTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :events_search_terms do |t|
      t.string :name

      t.timestamps
    end
  end
end
