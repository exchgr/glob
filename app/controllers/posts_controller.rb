require_relative '../objects/post_renderer'

class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @body_renderer = PostRenderer.new(Redcarpet::Render::HTML)
  end

  def index
    @posts = Post.limit(5)
    @preview_renderer = PostRenderer.new(Redcarpet::Render::StripDown)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params(params))
    @post.save

    redirect_to "/"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params(params))

    redirect_to action: :show, id: params[:id]
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to "/"
  end

  private

  def post_params(params)
    params.require(:post).permit(:title, :body)
  end
end
