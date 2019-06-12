# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # doc coming soon
      class ModalHeader < Bootstrap4RailsComponents::Bootstrap::Components::ModalHeader
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
