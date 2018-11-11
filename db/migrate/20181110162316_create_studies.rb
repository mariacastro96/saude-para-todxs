class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
<<<<<<< HEAD:db/migrate/20181110162316_create_studies.rb
      t.string :code
      t.string :title
      t.text :description
=======
      t.string :code, null: false
      t.string :title, null: false
      t.string :subtitle
      t.integer :total_value, null: false
>>>>>>> origin/master:db/migrate/20181110162031_create_studies.rb
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
  
