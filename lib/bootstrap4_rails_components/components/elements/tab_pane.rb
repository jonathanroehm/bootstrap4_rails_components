# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      class TabPane < Bootstrap4RailsComponents::Bootstrap::Components::TabPane
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

        include Bootstrap4RailsComponents::Components::Traits::Active
      end
    end
  end
end
