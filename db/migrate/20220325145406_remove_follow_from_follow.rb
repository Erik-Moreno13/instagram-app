class RemoveFollowFromFollow < ActiveRecord::Migration[7.0]
  def change
    remove_column :follows, :followed, :integer
    remove_column :follows, :follower, :integer
  end
end
