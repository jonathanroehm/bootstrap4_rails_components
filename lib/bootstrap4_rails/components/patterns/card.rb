# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Card doesn't have any customizations unique to the design system yet
      # As such, the NFG UI card is simply a bootstrap card behind the scenes.
      # Traits will eventually be connected here.
      class Card < Bootstrap4Rails::Bootstrap::Components::Card
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable

        include Bootstrap4Rails::Components::Traits::Theme

        # TODO: Confirm that the image overlays are correct. The tops are not being rounded. Should they be?
        def render
          if render_in_body
            super
          else
            content_tag(:div, html_options) do
              body
            end
          end
        end

        def render_in_body
          options.fetch(:render_in_body, true)
        end

        private

        def non_html_attribute_options
          super.push(:render_in_body)
        end
      end
    end
  end
end
