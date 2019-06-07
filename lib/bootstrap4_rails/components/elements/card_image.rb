# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # doc coming soon
      class CardImage < Bootstrap4Rails::Bootstrap::Components::CardImage
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
