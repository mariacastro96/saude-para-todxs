class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :code
      t.text :question
      t.text :answer
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
