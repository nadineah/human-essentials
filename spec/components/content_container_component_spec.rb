# frozen_string_literal: true

require "rails_helper"

RSpec.describe ContentContainerComponent, type: :component do
  subject do 
    render_inline(described_class.new(title: title, subtitle: subtitle)) do
      content
    end
  end
  let(:title) { "Title" }
  let(:subtitle) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit." }
  let(:content) { "Awesome content" }

  it 'renders the title' do
    expect(subject.css("h1").text).to eq(title)
  end

  it 'renders the subtitle' do
    expect(subject.css("p").text).to eq(subtitle)
  end

  it 'renders the content' do
    expect(subject.text).to include(content)
  end
end
