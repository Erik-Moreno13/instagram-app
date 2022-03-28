class AddFollowersToFollow < ActiveRecord::Migration[7.0]
  def change
    add_column :follows, :followed, :integer
    add_column :follows, :follower, :integer
  end
end
