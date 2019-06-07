# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Foundations
      # Image doc coming soon
      class Image < Bootstrap4Rails::Components::Base
        def render
          content_tag(:img, html_options) {}
        end
      end
    end
  end
end
