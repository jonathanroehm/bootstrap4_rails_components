# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Bootstrap
    module Components
      # Bootstrap Dropdown Items Component
      # https://getbootstrap.com/docs/4.1/components/dropdowns/#menu-items
      class DropdownItem < Bootstrap4RailsComponents::Bootstrap::Components::Base
        include Bootstrap::Utilities::Wrappable
        include Bootstrap::Utilities::Activatable
        include Bootstrap::Utilities::Disableable
        include Bootstrap::Utilities::Tooltipable
        include Bootstrap::Utilities::Remotable

        def component_family
          :dropdown
        end

        def render
          if tooltip && disabled
            content_tag(:span, disabled_component_tooltip_wrapper_html_options) do
              content_tag(as, html_options.except(:href)) do
                (block_given? ? yield : body)
              end
            end
          else
            content_tag(as, html_options) do
              (block_given? ? yield : body)
            end
          end
        end

        private

        def default_html_wrapper_element
          :a
        end
      end
    end
  end
end
