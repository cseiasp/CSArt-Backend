class CreateAuctions < ActiveRecord::Migration[6.0]
  def change
    create_table :auctions do |t|
      t.integer :painting_id
      t.string :start
      t.string :end
      t.string :status

      t.timestamps
    end
  end
end
