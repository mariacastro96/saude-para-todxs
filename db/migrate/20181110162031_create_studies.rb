class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
      t.string :code
      t.string :title
      t.string :subtitle
      t.integer :total_value
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
