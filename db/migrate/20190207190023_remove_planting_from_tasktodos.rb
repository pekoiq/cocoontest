class RemovePlantingFromTasktodos < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasktodos, :planting, :string
  end
end
