class CreatePlantings < ActiveRecord::Migration[5.2]
  def change
    create_table :plantings do |t|
      t.integer :crop_id
      t.string :planting
      t.integer :bedfeet
      t.date :fielddate
      t.integer :weeksuntilharvest
      t.integer :weeksofharvest
      t.date :greehousedate
      t.date :firstharvest
      t.date :lastharvest
      t.integer :weeklyyield

      t.timestamps
    end
  end
end
