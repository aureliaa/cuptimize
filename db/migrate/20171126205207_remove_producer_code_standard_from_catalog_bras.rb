class RemoveProducerCodeStandardFromCatalogBras < ActiveRecord::Migration[5.1]
  def change
    remove_column :catalog_bras, :producer_code_standard, :integer
  end
end
