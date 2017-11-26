class RemoveCodeProducerFromCatalogBras < ActiveRecord::Migration[5.1]
  def change
    remove_column :catalog_bras, :code_producer, :integer
  end
end
