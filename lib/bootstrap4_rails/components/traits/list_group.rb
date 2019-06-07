# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Traits
      # Access to pre-designed Icon traits
      module ListGroup
        TRAITS = %i[flush].freeze

        def flush_trait
          options[:flush] = true
        end
      end
    end
  end
end
