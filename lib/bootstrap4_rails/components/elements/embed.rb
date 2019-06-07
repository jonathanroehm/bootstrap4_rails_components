# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Embed documentation coming soon
      # Pass in embeddable aspect ratios with aspect_ratio: '16:9' syntax
      class Embed < Bootstrap4Rails::Bootstrap::Components::Embed
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
