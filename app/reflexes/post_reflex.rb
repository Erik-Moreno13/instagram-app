# frozen_string_literal: true
class PostReflex < ApplicationReflex

  def like
    post = Post.find(element.dataset[:post_id])
    user = Post.find(element.dataset[:user_id])
    like = post.likes.where(user_id: user.id).count

    if like == 0
      Like.create!(user_id: user.id, liked_on: post)
      @change_color = "red-400"
      @change_class = "solid"
    else
      removeLike = Like.where(user_id: user.id, liked_on: post)
      Like.delete(removeLike)
      @change_color = ""
      @change_class = "regular"
    end
  end
end
