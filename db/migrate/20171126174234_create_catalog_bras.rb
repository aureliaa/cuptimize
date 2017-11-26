class CreateCatalogBras < ActiveRecord::Migration[5.1]
  def change
    create_table :catalog_bras do |t|
      t.integer :product_id
      t.integer :producer_code_standard
      t.integer :code_on_card
      t.string :producer_name
      t.string :category_name
      t.string :series_name
      t.string :description_name_eng
      t.string :description_version_eng
      t.string :description_long_eng
      t.string :desc_short_eng
      t.integer :price_gross
      t.integer :price_net
      t.string :product_size
      t.integer :code_producer
      t.string :product_code
      t.integer :stock
      t.string :images_large_image_1
      t.string :images_large_image_2
      t.string :images_large_image_3
      t.string :images_large_image_4
      t.string :images_large_image_5
      t.string :images_icons_icon
      t.string :colour
      t.string :product_buy_url
      t.integer :min_band_size
      t.integer :max_band_size
      t.integer :min_cup_size
      t.integer :max_cup_size
      t.integer :full_on_bottom
      t.integer :full_on_top
      t.integer :even
      t.integer :center_full
      t.integer :outer_full
      t.integer :average
      t.integer :shallow
      t.integer :projected

      t.timestamps
    end
  end
end
