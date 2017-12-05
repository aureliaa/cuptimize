class AddMeasurementToUserBras < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_bras, :measurement, foreign_key: true
  end
end
