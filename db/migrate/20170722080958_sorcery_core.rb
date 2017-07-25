class SorceryCore < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.string :firstName, :null => false
      t.string :lastName, :null => false
      t.string :gender, :null => false
      t.integer :age, :null => false
      t.string :identificationCardNumber
      t.string :driverLicense
      t.string :phoneNumber, :null => false
      t.string :companyName
      t.boolean :admin, default: false

      t.timestamps                :null => false
    end

    add_index :users, :email, unique: true
  end
end
