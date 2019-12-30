class CreateGpsdevices < ActiveRecord::Migration[5.1]
  def change
    create_table :gpsdevices do |t|
      t.string :longitude
      t.string :latitude
      t.integer :time


      t.timestamps
    end
    add_index :gpsdevices, :time
  end
end
