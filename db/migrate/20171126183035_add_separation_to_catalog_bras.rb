class AddSeparationToCatalogBras < ActiveRecord::Migration[5.1]
  def change
    add_column :catalog_bras, :separation, :integer
  end
end
