class AddCodeProducerToCatalogBras < ActiveRecord::Migration[5.1]
  def change
    add_column :catalog_bras, :code_producer, :bigint
  end
end
