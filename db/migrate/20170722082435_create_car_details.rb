class CreateCarDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :car_details do |t|
      t.references :user, foreign_key: true
      t.string :carRegistrationNumber, null: false
      t.string :manufacturer
      t.string :model
      t.string :color, null: false
      t.string :roadTaxNumber, null: false

      t.timestamps
    end
  end
end
