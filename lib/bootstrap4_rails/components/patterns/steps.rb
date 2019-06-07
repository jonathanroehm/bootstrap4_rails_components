# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Steps doc coming soon
      class Steps < Bootstrap4Rails::Components::Elements::Nav
        def component_family
          :steps
        end

        def fill
          true
        end

        private

        def css_classes
          [
            super,
            'nav-steps'
          ].join(' ').squish
        end
      end
    end
  end
end
