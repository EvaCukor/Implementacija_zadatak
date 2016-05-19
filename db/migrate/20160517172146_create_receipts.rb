class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :name
      t.integer :user_id, :store_id
      t.timestamps
    end
  end
end
