# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read('stock_export_full_for_aureliaa.csv')
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = CatalogBra.new
    t.product_id = row['product_id']
    t.code_on_card = row['code_on_card']
    t.producer_name = row['producer_name']
    t.category_name = row['category_name']
    t.series_name = row['series_name']
    t.description_name_eng = row['description_name_eng']
    t.description_version_eng = row['description_version_eng']
    t.description_long_eng = row['description_long_eng']
    t.desc_short_eng = row['desc_short_eng']
    t.price_gross = row['price_gross']
    t.price_net = row['price_net']
    t.product_size = row['product_size']
    t.code_producer = row['code_producer']
    t.product_code = row['product_code']
    t.stock = row['stock']
    t.images_large_image_1 = row['images_large_image_1']
    t.images_large_image_2 = row['images_large_image_2']
    t.images_large_image_3 = row['images_large_image_3']
    t.images_large_image_4 = row['images_large_image_4']
    t.images_large_image_5 = row['images_large_image_5']
    t.images_icons_icon = row['images_icons_icon']
    t.colour = row['colour']
    t.product_buy_url = row['product_buy_url']
    t.min_band_size = row['min_band_size']
    t.max_band_size = row['max_band_size']
    t.min_cup_size = row['min_cup_size']
    t.max_cup_size = row['max_cup_size']
    t.full_on_bottom = row['full_on_bottom']
    t.full_on_top = row['full_on_top']
    t.even = row['even']
    t.center_full = row['center_full']
    t.outer_full = row['outer_full']
    t.average = row['average']
    t.shallow = row['shallow']
    t.projected = row['projected']
    t.separation = row['separation']
    t.large_roots = row['large_roots']
    t.producer_code_standard = row['producer_code_standard']
  t.save
  puts "#{t.description_name_eng} #{t.code_on_card}, #{t.product_size} saved"
end

