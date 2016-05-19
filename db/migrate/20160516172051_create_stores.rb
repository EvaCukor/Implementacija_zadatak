class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name, :street_name, :city, :country
      t.integer :street_no, :postcode
      t.timestamps
    end
  end
end
