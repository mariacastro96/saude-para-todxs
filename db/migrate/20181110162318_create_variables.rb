class CreateVariables < ActiveRecord::Migration[5.2]
  def change
    create_table :variables do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.integer :value, null: false
      t.float :percentage, null: false
      t.references :study, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
