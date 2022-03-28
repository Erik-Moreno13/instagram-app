class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer :liked_on_id
      t.string :liked_on_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
