class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :word
      t.integer :category_id
      t.timestamps
    end
    # add_index :questions, [:category_id]
  end
end
