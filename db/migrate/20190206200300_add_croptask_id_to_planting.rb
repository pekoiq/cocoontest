class AddCroptaskIdToPlanting < ActiveRecord::Migration[5.2]
  def change
    add_column :plantings, :croptask_id, :integer
  end
end
