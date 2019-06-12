module Bootstrap4RailsComponents
  module Components
    module Traits
      # Step traits
      module Step
        TRAITS = %i[visited].freeze

        def visited_trait
          options[:visited] = true
        end
      end
    end
  end
end
