# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Bootstrap
    module Components
      # Bootstrap Dropdown Header Component
      # https://getbootstrap.com/docs/4.1/components/dropdowns/#headers
      class DropdownHeader < Bootstrap4RailsComponents::Bootstrap::Components::Base
        def heading
          options.fetch(:heading, '')
        end

        def component_family
          :dropdown
        end

        def render
          content_tag(:h6, heading, html_options)
        end
      end
    end
  end
end
