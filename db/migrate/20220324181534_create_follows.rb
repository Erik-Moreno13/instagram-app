class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.integer :follower
      t.integer :followed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
