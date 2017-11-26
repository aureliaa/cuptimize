class AddProducerCodeStandardToCatalogBras < ActiveRecord::Migration[5.1]
  def change
    add_column :catalog_bras, :producer_code_standard, :string
  end
end
