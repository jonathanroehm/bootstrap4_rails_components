# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Traits
      # Access to pre-designed Icon traits
      module Icon
        TRAITS = %i[loader].freeze

        def loader_trait
          options[:icon] = 'spinner spin fw'
        end
      end
    end
  end
end
