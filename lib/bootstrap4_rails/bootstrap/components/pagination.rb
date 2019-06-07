# frozen_string_literal: true

module Bootstrap4Rails
  module Bootstrap
    module Components
      # Bootstrap Pagination Component
      # https://getbootstrap.com/docs/4.1/components/pagination/
      class Pagination < Bootstrap4Rails::Bootstrap::Components::Base
        include Bootstrap::Utilities::Alignable
        include Bootstrap::Utilities::Sizable

        def component_family
          :pagination
        end

        def render
          content_tag(:nav) do
            super
          end
        end

        private

        def base_element
          :ul
        end
      end
    end
  end
end
