# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # ListGroupItem doc coming soon
      class ListGroupItem < Bootstrap4Rails::Bootstrap::Components::ListGroupItem
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
