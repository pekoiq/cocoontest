class CreateCrops < ActiveRecord::Migration[5.2]
  def change
    create_table :crops do |t|
      t.string :name
      t.string :transplantordirectseed
      t.integer :rowsperbed
      t.integer :seedsperounce
      t.string :unit
      t.integer :yield
      t.integer :priceperunit
      t.integer :seedsperrowfoot
      t.integer :greenhouseweeks
      t.integer :inrowspacing
      t.integer :seedspercell
      t.integer :cellsperflat
      t.timestamps
    end
  end
end
