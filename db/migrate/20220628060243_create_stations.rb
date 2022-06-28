class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :route
      t.string :name
      t.string :time

      t.timestamps
    end
  end
end
