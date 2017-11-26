class CreateMeasurements < ActiveRecord::Migration[5.1]
  def change
    create_table :measurements do |t|
      t.integer :rib_cage_parameter
      t.integer :breast_cage_rest_perimeter
      t.integer :breast_cage_bend_perimeter
      t.integer :breast_upper_shape
      t.integer :breast_bottom_shape
      t.integer :breast_center_disposition
      t.integer :breast_separation
      t.integer :breast_roots

      t.timestamps
    end
  end
end
