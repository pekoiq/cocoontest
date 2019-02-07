class CreatePlantingCroptasks < ActiveRecord::Migration[5.2]
  def change
    create_table :planting_croptasks do |t|
      t.integer :croptask_id
           t.integer :planting_id
      t.timestamps
    end
  end
end
