class AddPlantingIdToCrop < ActiveRecord::Migration[5.2]
  def change
    add_column :crops, :planting_id, :string
  end
end
