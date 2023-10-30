class RemoveBodyFromPuzzles < ActiveRecord::Migration[7.0]
  def change
    remove_column :puzzles, :body, :text
  end
end
