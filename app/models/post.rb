class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :likes, as: :liked_on

  def change_color(post, user)
    like = post.likes.where(user_id: user).count
    if like == 1
      "red-500"
    else
      ""
    end
  end

  def change_class(post, user)
    like = post.likes.where(user_id: user).count
    if like == 0
      "regular"
    else
      "solid"
    end
  end

  def name_users(post)

    if post.likes.count > 0

      like = post.likes.first
      user = User.find(like.user_id)
      user.user_name

      if post.likes.count > 2
        "A #{user.user_name} y otras #{post.likes.count - 1} les gusta esto"
      elsif post.likes.count == 2
        "A #{user.user_name} y a otra persona les gusta esto"
      elsif post.likes.count == 1
        "A #{user.user_name} le gusta esto"
      else
        ""
      end
    end
  end

end
