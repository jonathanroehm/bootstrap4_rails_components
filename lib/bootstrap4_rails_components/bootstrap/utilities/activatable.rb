# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Bootstrap
    module Utilities
      # Passes in necessary attributes to allow a component to have an active state
      module Activatable

        def active
          options.fetch(:active, default_active)
        end

        private

        def css_classes
          [
            super,
            ('active' if active)
          ].join(' ').squish
        end

        def non_html_attribute_options
          super.push(:active)
        end

        def default_active
          false
        end
      end
    end
  end
end
