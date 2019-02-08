class AddColumnsToTasktodo < ActiveRecord::Migration[5.2]
  def change
    add_column :tasktodos, :task, :string
    add_column :tasktodos, :category, :string
    add_column :tasktodos, :planting, :string
    add_column :tasktodos, :location, :string
  end
end
