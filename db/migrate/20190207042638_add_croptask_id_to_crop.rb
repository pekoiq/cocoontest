class AddCroptaskIdToCrop < ActiveRecord::Migration[5.2]
  def change
    add_column :crops, :croptask_id, :integer
  end
end
