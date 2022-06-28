class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.string :name
      t.string :price
      t.string :address
      t.string :age
      t.text :remarks

      t.timestamps
    end
  end
end
