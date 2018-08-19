require 'spec_helper'
require 'redcarpet'
require_relative '../../app/objects/post_renderer.rb'

class Post
  attr_accessor :title, :body

  def initialize(params)
    @title = params[:title]
    @body = params[:body]
  end
end

RSpec.describe PostRenderer, type: :model do
  let(:post) { Post.new(
    title: "test post",
    body: "here is a _body_"
  ) }

  let(:posts_renderer) {
    PostRenderer.new(Redcarpet::Render::HTML)
  }

  describe "render" do
    it "should render a markdown string" do
      expect(posts_renderer.render_body(post)).to eq("<p>here is a <em>body</em></p>\n")
    end
  end
end
