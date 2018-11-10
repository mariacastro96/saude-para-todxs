class CreateStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :statements do |t|
      t.string :code
      t.string :title
      t.text :text
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
