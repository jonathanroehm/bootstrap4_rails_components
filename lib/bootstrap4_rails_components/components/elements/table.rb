# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Table doc coming soon
      class Table < Bootstrap4RailsComponents::Bootstrap::Components::Table
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
