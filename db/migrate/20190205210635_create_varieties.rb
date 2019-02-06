class CreateVarieties < ActiveRecord::Migration[5.2]
  def change
    create_table :varieties do |t|
      t.integer :crop_id
      t.integer :planting_id
      t.string :variety
      t.string :body
      t.integer :percentageofplanting
      t.integer :varietybedfeet
      t.integer :transplantflats
      t.timestamps
    end
  end
end
