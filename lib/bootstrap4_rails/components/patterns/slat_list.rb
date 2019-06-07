# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # SlatList doc coming soon
      class SlatList < Bootstrap4Rails::Components::Base
        include Bootstrap::Utilities::Sizable

        include Bootstrap4Rails::Components::Traits::Size

        def component_family
          :slats
        end
      end
    end
  end
end
