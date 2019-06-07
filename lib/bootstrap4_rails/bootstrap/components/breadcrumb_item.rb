# frozen_string_literal: true

module Bootstrap4Rails
  module Bootstrap
    module Components
      # Bootstrap Breadcrumb Item
      # Subcomponent of Breadcrumb
      # https://getbootstrap.com/docs/4.1/components/breadcrumb/
      class BreadcrumbItem < Bootstrap4Rails::Bootstrap::Components::Base
        include Bootstrap::Utilities::Activatable

        def component_family
          :breadcrumb
        end

        private

        def base_element
          :li
        end

        def assistive_html_attributes
          active ? super.merge!(aria: { current: 'page' }) : super
        end
      end
    end
  end
end
