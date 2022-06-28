class AddApartmentRefToStations < ActiveRecord::Migration[6.0]
  def change
    add_reference :stations, :apartment, null: false, foreign_key: true
  end
end
