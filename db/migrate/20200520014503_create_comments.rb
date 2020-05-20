class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :body

      t.timestamps
    end
    add_index :comments, [:body, :post_id], unique: true
  end
end
