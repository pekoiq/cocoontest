class CreateTasktodos < ActiveRecord::Migration[5.2]
  def change
    create_table :tasktodos do |t|
t.integer :crop_id
t.integer :croptask_id
t.date :date
    t.string :planting_id
      t.timestamps
    end
  end
end
