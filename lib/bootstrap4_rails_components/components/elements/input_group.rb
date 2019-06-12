# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # InputGroup doc coming soon
      class InputGroup < Bootstrap4RailsComponents::Bootstrap::Components::InputGroup
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
