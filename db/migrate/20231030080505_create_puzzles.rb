class CreatePuzzles < ActiveRecord::Migration[7.0]
  def change
    create_table :puzzles do |t|
      t.string :title
      t.text :body
      t.integer :rows
      t.integer :cols
      t.text :grid

      t.timestamps
    end
  end
end
