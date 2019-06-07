# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # doc coming soon
      class ModalFooter < Bootstrap4Rails::Bootstrap::Components::ModalFooter
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
