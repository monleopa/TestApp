class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :mean
      t.boolean :correct
      t.timestamps
      t.integer :question_id
    end
  end
end
