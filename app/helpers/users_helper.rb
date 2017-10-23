module UsersHelper

  def user_has_comments
    if @user.comments.count >1
      #<h2>Posts</h2>
        render @user.posts
    else
      "#{@user.name} has not submitted any comments yet."
    end
  end

  def user_has_posts
    if @user.posts.count >1
      #<h2>Comments</h2>
        render @user.comments
    else
      "#{@user.name} has not submitted any posts yet."
    end
  end

end
