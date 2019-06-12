# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # SlatList doc coming soon
      class SlatList < Bootstrap4RailsComponents::Components::Base
        include Bootstrap::Utilities::Sizable

        include Bootstrap4RailsComponents::Components::Traits::Size

        def component_family
          :slats
        end
      end
    end
  end
end
