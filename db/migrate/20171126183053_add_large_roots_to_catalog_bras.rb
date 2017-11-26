class AddLargeRootsToCatalogBras < ActiveRecord::Migration[5.1]
  def change
    add_column :catalog_bras, :large_roots, :integer
  end
end
