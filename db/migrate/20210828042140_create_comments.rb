class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.references :tweet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
