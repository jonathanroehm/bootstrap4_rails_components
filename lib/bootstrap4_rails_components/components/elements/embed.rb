# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Embed documentation coming soon
      # Pass in embeddable aspect ratios with aspect_ratio: '16:9' syntax
      class Embed < Bootstrap4RailsComponents::Bootstrap::Components::Embed
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
