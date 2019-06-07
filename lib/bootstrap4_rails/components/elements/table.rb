# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Table doc coming soon
      class Table < Bootstrap4Rails::Bootstrap::Components::Table
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
