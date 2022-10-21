class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :user_name
      t.boolean :is_business
      t.integer :airport_id
      t.string :address
      t.string :hours_of_operation
      t.string :phone_number
      t.string :contact_radio
      t.string :service_fuel
      t.boolean :has_car
      t.boolean :service_facilities
      t.boolean :winter_services
      t.boolean :other_services
      t.float :rating

      t.timestamps
    end
  end
end
