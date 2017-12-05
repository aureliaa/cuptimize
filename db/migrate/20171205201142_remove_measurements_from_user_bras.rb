class RemoveMeasurementsFromUserBras < ActiveRecord::Migration[5.1]
  def change
    remove_reference :user_bras, :measurements, foreign_key: true
  end
end
