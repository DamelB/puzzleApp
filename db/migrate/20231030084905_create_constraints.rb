class CreateConstraints < ActiveRecord::Migration[7.0]
  def change
    create_table :constraints do |t|
      t.string :type
      t.text :array
      t.references :puzzle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
