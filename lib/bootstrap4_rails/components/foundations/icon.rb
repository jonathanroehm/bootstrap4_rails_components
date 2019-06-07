# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Foundations
      # Icon doc coming soon
      # Implementation and usage is designed to mimic the font_awesome_rails gem
      #
      # Example usage:
      # = ui.nfg :icon, 'rocket', :right, text: 'Example text with icon on the right'
      class Icon < Bootstrap4Rails::Components::Base
        include Bootstrap::Utilities::Themeable
        include Bootstrap::Utilities::Tooltipable

        include Bootstrap4Rails::Components::Traits::Icon
        include Bootstrap4Rails::Components::Traits::Muted
        include Bootstrap4Rails::Components::Traits::Theme
        include Bootstrap4Rails::Components::Traits::Alignment

        # Officially declare the icon spacer classes
        # so that other iconable components that have more than one icon
        # e.g.: :left_icon & :icon can use the spacer class manually
        LEFT_ICON_SPACER_CSS_CLASS  = 'mr-1'
        RIGHT_ICON_SPACER_CSS_CLASS = 'ml-1'

        def render
          view_context.fa_icon icon, **html_options, text: text, right: right
        end

        def icon
          options[:icon] || (traits.slice!(0).to_s if traits.first.is_a?(String))
        end

        def text
          options.fetch(:text, nil)
        end

        def right
          options.fetch(:right, false)
        end

        private

        def css_classes
          return super unless update_css_classes?
          [
            super,
            (Bootstrap4Rails::Components::Foundations::Icon::LEFT_ICON_SPACER_CSS_CLASS unless right),
            (Bootstrap4Rails::Components::Foundations::Icon::RIGHT_ICON_SPACER_CSS_CLASS if right)
          ].join(' ').squish
        end

        def theme_css_class_prefix
          'text-'
        end

        def component_css_class
          ''
        end

        def default_theme
          nil
        end

        def non_html_attribute_options
          super.push(:right, :text, :icon)
        end

        def outlineable?
          false
        end

        # Several components need to utilize the icon with a spacer css class
        # where text is supplied in the #render, and not passed to the icon
        # thus, icons with :right trait are allowed through
        def update_css_classes?
          text || right
        end
      end
    end
  end
end
