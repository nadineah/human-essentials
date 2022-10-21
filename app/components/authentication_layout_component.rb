# frozen_string_literal: true

class AuthenticationLayoutComponent < ViewComponent::Base
  renders_one :image_thing

  def initialize(background_image:)
    @background_image = background_image
  end

end
