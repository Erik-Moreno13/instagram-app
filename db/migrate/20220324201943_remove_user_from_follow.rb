class RemoveUserFromFollow < ActiveRecord::Migration[7.0]
  def change
    remove_reference :follows, :user, null: false, foreign_key: true
    remove_column :follows, :followed, :integer
    remove_column :follows, :follower, :integer
  end
end
