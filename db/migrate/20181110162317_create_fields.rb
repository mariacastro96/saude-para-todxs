class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string :code
      t.string :title
      t.text :description
      t.integer :total_value
      t.references :study, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
