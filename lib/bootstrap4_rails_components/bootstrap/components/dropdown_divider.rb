# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Bootstrap
    module Components
      # Bootstrap Dropdown Component
      # https://getbootstrap.com/docs/4.1/components/dropdowns/
      class DropdownDivider < Bootstrap4RailsComponents::Bootstrap::Components::Base
        def component_family
          :dropdown
        end

        def render
          content_tag(:div, nil, html_options)
        end
      end
    end
  end
end
