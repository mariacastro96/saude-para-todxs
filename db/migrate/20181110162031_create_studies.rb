class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
      t.string :code, null: false
      t.string :title, null: false
      t.string :subtitle
      t.integer :total_value, null: false
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
