class AddPlantingnameToTasktodos < ActiveRecord::Migration[5.2]
  def change
    add_column :tasktodos, :plantingname, :string
  end
end
