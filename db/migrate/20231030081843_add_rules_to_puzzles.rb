class AddRulesToPuzzles < ActiveRecord::Migration[7.0]
  def change
    add_column :puzzles, :rules, :text
  end
end
