# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Badge doesn't have any customizations unique to the design system yet
      # As such, the NFG UI badge is simply a bootstrap badge behind the scenes.
      # Traits will eventually be connected here.
      class DropdownToggle < Bootstrap4Rails::Bootstrap::Components::DropdownToggle
        include Bootstrap4Rails::Components::Utilities::Iconable
        include Bootstrap4Rails::Components::Utilities::LeftIconable
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable

        include Bootstrap4Rails::Components::Traits::DropdownToggle
        include Bootstrap4Rails::Components::Traits::Size
        include Bootstrap4Rails::Components::Traits::Theme

        def icon
          options.fetch(:icon, 'caret-down')
        end

        def render
          Bootstrap4Rails::Components::Elements::Button.new({ as: as, theme: theme, **html_options, remove_component_css_classes: nav_link, icon: icon }, view_context).render do
            capture do
              if left_icon
                concat(Bootstrap4Rails::Components::Foundations::Icon.new({ traits: [left_icon], class: Bootstrap4Rails::Components::Foundations::Icon::LEFT_ICON_SPACER_CSS_CLASS }, view_context).render)
              end
              concat(block_given? ? yield : body)
            end
          end
        end
      end
    end
  end
end
