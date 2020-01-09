class CreatePaintings < ActiveRecord::Migration[6.0]
  def change
    create_table :paintings do |t|
      t.string :name
      t.string :medium
      t.string :url
      t.string :exhibited_at
      t.string :price
      t.string :award
      t.string :availability_status

      t.timestamps
    end
  end
end
