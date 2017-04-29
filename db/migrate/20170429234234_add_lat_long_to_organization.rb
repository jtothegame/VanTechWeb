class AddLatLongToOrganization < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :lat, :float
    add_column :organizations, :long, :float
  end
end
