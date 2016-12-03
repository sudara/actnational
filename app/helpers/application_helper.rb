module ApplicationHelper
  def markdown(text)
    options = {hard_wrap: true, filter_html: true, autolink: true}
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
    markdown.render(text).html_safe
  end
end
