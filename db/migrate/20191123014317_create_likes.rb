class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :user
      t.integer :liked_user_id
      t.timestamps
    end
  end
end
