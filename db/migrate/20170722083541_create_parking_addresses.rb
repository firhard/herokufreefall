class CreateParkingAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :parking_addresses do |t|
      t.references :user, foreign_key: true
      t.string :address
      t.string :building
      t.string :city
      t.string :state
      t.string :country, null: false, default: "malaysia"
      t.string :postcode
      t.string :additionalDetails
      t.float :monthlyRate, null: false
      t.float :weeklyRate
      t.float :dailyRate
      t.float :hourlyRate
      t.float :xCoordinates
      t.float :yCoordinate
      t.boolean :approval, default: false
      t.string :features
      t.boolean :status, default: true
      t.timestamp :availableFrom

      t.timestamps
    end
  end
end
