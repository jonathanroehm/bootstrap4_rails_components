# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Badge doesn't have any customizations unique to the design system yet
      # As such, the NFG UI badge is simply a bootstrap badge behind the scenes.
      # Traits will eventually be connected here.
      class Dropdown < Bootstrap4Rails::Bootstrap::Components::Dropdown
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable

        include Bootstrap4Rails::Components::Traits::Theme

        def render
          content_tag(:div, html_options) do
            if button.present?
              concat(Bootstrap4Rails::Bootstrap::Components::DropdownToggle.new({ body: button, theme: theme, as: :button, offset: offset }, view_context).render)
            end
            concat(block_given? ? yield : body)
          end
        end
      end
    end
  end
end
