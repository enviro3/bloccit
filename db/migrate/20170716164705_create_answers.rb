class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :body
      t.string :text
      t.string :question
      t.string :references

      t.timestamps null: false
    end
  end
end
