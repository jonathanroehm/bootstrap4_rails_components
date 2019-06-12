# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Bootstrap
    module Components
      # Bootstrap Table Component
      # https://getbootstrap.com/docs/4.1/content/tables/
      class Table < Bootstrap4RailsComponents::Bootstrap::Components::Base
        private

        def base_element
          :table
        end
      end
    end
  end
end
