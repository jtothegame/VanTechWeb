class AddColumnsToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :date, :datetime
    add_column :events, :venue, :string
    add_column :events, :lat, :float
    add_column :events, :long, :float
    add_column :events, :group, :string
    add_column :events, :address, :string
    add_column :events, :url, :string
  end
end
