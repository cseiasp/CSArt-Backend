class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.integer :painting_id
      t.string :status
      t.integer :bid_price

      t.timestamps
    end
  end
end
