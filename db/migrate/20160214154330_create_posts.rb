class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :text
      t.integer :emotion_id

      t.timestamps
    end
  end
end
