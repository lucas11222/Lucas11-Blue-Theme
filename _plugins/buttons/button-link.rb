require "jekyll-spark"

module Jekyll
  class ButtonLinkComponent < ComponentBlock
    def template(context)
    content = @props["content"]
    link = @props["link"]
    render = %Q[
      <button onclick="location.href='#{link}';">#{content}</button>
    ]
    end
  end
end

Liquid::Template.register_tag(
  "ButtonLink",
  Jekyll::ButtonLinkComponent,
)