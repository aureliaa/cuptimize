class AddUserIdToMeasurements < ActiveRecord::Migration[5.1]
  def change
    add_reference :measurements, :user, foreign_key: true
  end
end
