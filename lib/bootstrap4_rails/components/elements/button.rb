# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Button doesn't have any customizations unique to the design system yet
      # As such, the NFG UI Button is simply a bootstrap Button behind the scenes.
      # Traits will eventually be connected here.
      class Button < Bootstrap4Rails::Bootstrap::Components::Button
        include Bootstrap4Rails::Components::Utilities::Confirmable
        include Bootstrap4Rails::Components::Utilities::DisableWithable
        include Bootstrap4Rails::Components::Utilities::Iconable
        include Bootstrap4Rails::Components::Utilities::LeftIconable
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Methodable
        include Bootstrap4Rails::Components::Utilities::Renderable

        include Bootstrap4Rails::Components::Traits::Active
        include Bootstrap4Rails::Components::Traits::Button
        include Bootstrap4Rails::Components::Traits::DisableWith
        include Bootstrap4Rails::Components::Traits::Size
        include Bootstrap4Rails::Components::Traits::Theme
        include Bootstrap4Rails::Components::Traits::Disable
        include Bootstrap4Rails::Components::Traits::Remote

        def data
          dismiss ? super.merge!(dismiss: dismiss) : super
        end

        # TODO
        def close
          # convert :close trait to
          # close: :alert
        end

        def method
          options.fetch(:method, nil)
        end

        def dismiss
          options.fetch(:dismiss, nil)
        end

        def render
          if tooltip && disabled
            content_tag(:span, disabled_component_tooltip_wrapper_html_options) do
              content_tag(as, html_options) do
                capture do
                  concat(left_icon_component) if left_icon
                  concat(block_given? ? yield : body)
                  concat(right_icon_component) if icon
                end
              end
            end

          else
            content_tag(as, html_options) do
              capture do
                concat(left_icon_component) if left_icon
                concat(block_given? ? yield : body)
                concat(right_icon_component) if icon
              end
            end
          end
        end

        private

        def left_icon_component
          Bootstrap4Rails::Components::Foundations::Icon.new({ traits: [left_icon],
                                                     class: Bootstrap4Rails::Components::Foundations::Icon::LEFT_ICON_SPACER_CSS_CLASS },
                                                   view_context).render

        end

        def right_icon_component
          Bootstrap4Rails::Components::Foundations::Icon.new({ traits: [icon, :right],
                                                     class: Bootstrap4Rails::Components::Foundations::Icon::RIGHT_ICON_SPACER_CSS_CLASS },
                                                   view_context).render
        end

        def base_element
          as
        end

        def dismiss_component?
          dismiss == :alert || dismiss == :modal
        end

        def non_html_attribute_options
          super.push(:dismiss)
        end
      end
    end
  end
end
