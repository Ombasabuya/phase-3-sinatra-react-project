class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :location
      t.string :property_type
      t.string :property_name
      t.string :property_size
      t.integer :landlord_id
      t.timestamps
    end

  end
end
