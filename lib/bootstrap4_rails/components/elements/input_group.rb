# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # InputGroup doc coming soon
      class InputGroup < Bootstrap4Rails::Bootstrap::Components::InputGroup
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
