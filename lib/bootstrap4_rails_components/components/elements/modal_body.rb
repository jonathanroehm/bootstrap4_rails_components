# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # doc coming soon
      class ModalBody < Bootstrap4RailsComponents::Bootstrap::Components::ModalBody
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
