class CreateTenants < ActiveRecord::Migration[6.1]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.integer :rent
      t.integer :property_id
      t.timestamps
    end
  end
end
