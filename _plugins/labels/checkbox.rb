require "jekyll-spark"

module Jekyll
  class CheckboxComponent < ComponentBlock
    def template(context, checked)
    content = @props["content"]
    checked = @props["checked"]
    render = %Q[
      <label class="container">#{content}
        <input type="checkbox" checked="#{checked}">
        <span class="checkmark"></span>
      </label>
    ]
    end
  end
end

Liquid::Template.register_tag(
  "Checkbox",
  Jekyll::CheckboxComponent,
)