module UsersHelper

  def user_has_comments(comments)
    if comments.empty?
      "#{@user.name} has not submitted any comments yet."
    else
      render @user.comments
    end
  end

  def user_has_posts(posts)
    if posts.empty?
      "#{@user.name} has not submitted any posts yet."
    else
      render @user.posts
    end
  end

  def user_has_favorited_posts(favorite_posts)
    if favorite_posts.empty?
      "#{@user.name} has not favorited any posts yet."
    else
      render favorite.post
    end
  end
end
