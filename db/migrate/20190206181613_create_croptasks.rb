class CreateCroptasks < ActiveRecord::Migration[5.2]
  def change
    create_table :croptasks do |t|
  t.integer :crop_id
      t.integer :planting_id
      t.string :task
      t.integer :weeksfromfielddate
      t.string :category
      t.timestamps
    end
  end
end
