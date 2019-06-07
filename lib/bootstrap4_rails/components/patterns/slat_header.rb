# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # SlatList doc coming soon
      class SlatHeader < Bootstrap4Rails::Components::Base
        def component_family
          :slats
        end

        private

        def css_classes
          [
            super,
            'd-none d-md-block'
          ].join(' ').squish
        end
      end
    end
  end
end
