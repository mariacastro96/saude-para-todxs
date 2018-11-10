class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :code, null: false
      t.text :question, null: false
      t.text :answer, null: false
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
