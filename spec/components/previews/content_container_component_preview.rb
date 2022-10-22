# frozen_string_literal: true

class ContentContainerComponentPreview < ViewComponent::Preview

  # @param title text
  # @param subtitle text
  # @param content text
  def default(title: 'Title', subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', content: "Awesome content")
    render(ContentContainerComponent.new(title: title, subtitle: subtitle)) do
      content
    end
  end

end
