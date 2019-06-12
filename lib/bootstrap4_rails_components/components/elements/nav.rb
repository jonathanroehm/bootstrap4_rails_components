# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Nav doc coming soon
      class Nav < Bootstrap4RailsComponents::Bootstrap::Components::Nav
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

        include Bootstrap4RailsComponents::Components::Traits::Alignment
        include Bootstrap4RailsComponents::Components::Traits::Nav
        include Bootstrap4RailsComponents::Components::Traits::Pill
        include Bootstrap4RailsComponents::Components::Traits::Vertical
      end
    end
  end
end
