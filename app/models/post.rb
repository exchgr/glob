require 'redcarpet'
require 'redcarpet/render_strip'

class Post < ApplicationRecord
  def render
    html_markdown.render(body).html_safe
  end

  def preview
    plaintext_markdown.render(body)[0..1000]
  end

  private

  def plaintext_markdown
    @_markdown ||= Redcarpet::Markdown.new(
      Redcarpet::Render::StripDown
    )
  end

  def markdown_options
    {
      autolink: true,
      fenced_code_blocks: true,
      footnotes: true,
      highlight: true,
      no_intra_emphasis: true,
      strikethrough: true,
      superscript: true,
      tables: true
    }
  end

  def html_markdown
    @_markdown ||= Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      markdown_options
    )
  end
end
