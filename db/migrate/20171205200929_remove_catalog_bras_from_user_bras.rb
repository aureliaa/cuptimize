class RemoveCatalogBrasFromUserBras < ActiveRecord::Migration[5.1]
  def change
    remove_reference :user_bras, :catalog_bras, foreign_key: true
  end
end
