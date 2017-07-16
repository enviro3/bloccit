class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body

      #idex reference telsl database to index post_id column for efficient searching 
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
