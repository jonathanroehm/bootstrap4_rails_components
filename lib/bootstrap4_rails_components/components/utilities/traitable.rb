# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Utilities
      # Manages trait system
      module Traitable
        include Bootstrap4RailsComponents::Components::Traits

        def utility_initialize
          super
          initialize_traits
        end

        def traits
          options[:traits] || []
        end

        private

        def initialize_traits
          return unless traits.any?

          traits.each do |trait|
            next unless Bootstrap4RailsComponents::Components::Traits::REGISTERED_TRAITS.include?(trait)
            send("#{trait}_trait")
          end
        end
      end
    end
  end
end
