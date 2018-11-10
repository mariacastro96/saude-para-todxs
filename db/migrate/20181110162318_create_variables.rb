class CreateVariables < ActiveRecord::Migration[5.2]
  def change
    create_table :variables do |t|
      t.string :code
      t.string :name
      t.integer :value
      t.float :percentage
      t.references :study, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
