require 'redcarpet'
require 'redcarpet/render_strip'
require 'active_support/core_ext/string/output_safety'

class PostRenderer
  def initialize(renderer)
    @renderer = renderer
  end

  def render_body(post)
    markdown.render(post.body).html_safe
  end

  private

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

  def markdown
    @_markdown ||= Redcarpet::Markdown.new(
      @renderer,
      markdown_options
    )
  end
end
