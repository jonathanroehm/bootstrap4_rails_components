# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Bootstrap Parent Progress Component
      # https://getbootstrap.com/docs/4.1/components/progress/
      class Progress < Bootstrap4Rails::Bootstrap::Components::Progress
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable

        include Bootstrap::Utilities::Sizable
        include Bootstrap::Utilities::Tooltipable

        include Bootstrap4Rails::Components::Traits::Theme
        include Bootstrap4Rails::Components::Traits::Size
        include Bootstrap4Rails::Components::Traits::ProgressBar

        private
      end
    end
  end
end
