class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :content, null: false
      t.boolean :state, null: false, default: false

      t.timestamps
    end
  end
end
