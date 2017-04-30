class AddColumnsToOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :icon, :string
    add_column :organizations, :header, :string
  end
end
