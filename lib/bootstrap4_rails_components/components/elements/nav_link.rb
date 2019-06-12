# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Nav doc coming soon
      class NavLink < Bootstrap4RailsComponents::Bootstrap::Components::NavLink
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Iconable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

        include Bootstrap4RailsComponents::Components::Traits::Active
        include Bootstrap4RailsComponents::Components::Traits::Remote
        include Bootstrap4RailsComponents::Components::Traits::Disable

        def render
          if dropdown
            Bootstrap4RailsComponents::Components::Elements::DropdownToggle.new({ body: (block_given? ? yield : body), as: :a, **html_options, theme: nil, nav_link: true }, view_context).render
          else
            content_tag(:a, html_options) do
              if icon
                Bootstrap4RailsComponents::Components::Foundations::Icon.new({ traits: [icon], text: (block_given? ? yield : body) }, view_context).render
              else
                (block_given? ? yield : body)
              end
            end
          end
        end
      end
    end
  end
end
