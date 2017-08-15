class PostsController < ApplicationController
  def index
    #declare instance variable and assign it to collection of Post objects using the all method provided by ActiveRecord. all returns a collection of Post objects
    @posts = Post.all
    @posts.each_with_index do |post, index|
      if index % 5 == 0
        post.update(title: "SPAM")
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
