require 'csv'

class PagesController < ApplicationController
  def home
    csv_text = File.read('stock_export_full_for_aureliaa.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
       Moulding.create!(row.to_hash)
    end
  end
end
