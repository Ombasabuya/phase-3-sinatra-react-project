class CreateLandlords < ActiveRecord::Migration[6.1]
  def change
    create_table :landlords do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.string :img_url
      t.timestamps
    end
  end
end
