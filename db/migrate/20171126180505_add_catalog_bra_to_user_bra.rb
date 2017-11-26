class AddCatalogBraToUserBra < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_bras, :catalog_bras, foreign_key: true
  end
end
