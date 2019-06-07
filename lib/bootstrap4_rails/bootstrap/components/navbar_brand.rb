# frozen_string_literal: true

module Bootstrap4Rails
  module Bootstrap
    module Components
      # Bootstrap Navbar Component
      # https://getbootstrap.com/docs/4.1/components/navbar/
      class NavbarBrand < Bootstrap4Rails::Bootstrap::Components::Base
        def component_family
          :navbar
        end

        def href
          options.fetch(:href, '#')
        end

        private

        def base_element
          :a
        end
      end
    end
  end
end
