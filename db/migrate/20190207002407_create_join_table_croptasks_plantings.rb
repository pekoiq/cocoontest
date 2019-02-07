class CreateJoinTableCroptasksPlantings < ActiveRecord::Migration[5.2]
  def change
    create_join_table :croptasks, :plantings do |t|
      # t.index [:croptask_id, :planting_id]
      # t.index [:planting_id, :croptask_id]
    end
  end
end
