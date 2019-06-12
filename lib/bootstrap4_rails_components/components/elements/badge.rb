# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Badge doesn't have any customizations unique to the design system yet
      # As such, the NFG UI badge is simply a bootstrap badge behind the scenes.
      # Traits will eventually be connected here.
      class Badge < Bootstrap4RailsComponents::Bootstrap::Components::Badge
        include Bootstrap::Utilities::Tooltipable

        include Bootstrap4RailsComponents::Components::Utilities::Iconable
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

        include Bootstrap4RailsComponents::Components::Traits::Theme
        include Bootstrap4RailsComponents::Components::Traits::Pill

        def render
          super do
            if icon
              Bootstrap4RailsComponents::Components::Foundations::Icon.new({ traits: [icon], text: body }, view_context).render
            else
              (block_given? ? yield : body)
            end
          end
        end
      end
    end
  end
end
