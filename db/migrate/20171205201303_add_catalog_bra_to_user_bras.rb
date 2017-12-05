class AddCatalogBraToUserBras < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_bras, :catalog_bra, foreign_key: true
  end
end
