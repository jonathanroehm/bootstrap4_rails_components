# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # doc coming soon
      class CardImageOverlay < Bootstrap4Rails::Bootstrap::Components::CardImageOverlay
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
