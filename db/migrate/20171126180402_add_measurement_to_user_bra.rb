class AddMeasurementToUserBra < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_bras, :measurements, foreign_key: true
  end
end
