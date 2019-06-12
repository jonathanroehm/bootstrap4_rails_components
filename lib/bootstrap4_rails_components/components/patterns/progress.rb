# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # Bootstrap Parent Progress Component
      # https://getbootstrap.com/docs/4.1/components/progress/
      class Progress < Bootstrap4RailsComponents::Bootstrap::Components::Progress
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

        include Bootstrap::Utilities::Sizable
        include Bootstrap::Utilities::Tooltipable

        include Bootstrap4RailsComponents::Components::Traits::Theme
        include Bootstrap4RailsComponents::Components::Traits::Size
        include Bootstrap4RailsComponents::Components::Traits::ProgressBar

        private
      end
    end
  end
end
