class RemoveCroptaskIdFromTasktodos < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasktodos, :croptask_id, :integer
  end
end
