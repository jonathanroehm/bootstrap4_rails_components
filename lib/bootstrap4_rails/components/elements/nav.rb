# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Nav doc coming soon
      class Nav < Bootstrap4Rails::Bootstrap::Components::Nav
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable

        include Bootstrap4Rails::Components::Traits::Alignment
        include Bootstrap4Rails::Components::Traits::Nav
        include Bootstrap4Rails::Components::Traits::Pill
        include Bootstrap4Rails::Components::Traits::Vertical
      end
    end
  end
end
