# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Nav doc coming soon
      class NavLink < Bootstrap4Rails::Bootstrap::Components::NavLink
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Iconable
        include Bootstrap4Rails::Components::Utilities::Renderable

        include Bootstrap4Rails::Components::Traits::Active
        include Bootstrap4Rails::Components::Traits::Remote
        include Bootstrap4Rails::Components::Traits::Disable

        def render
          if dropdown
            Bootstrap4Rails::Components::Elements::DropdownToggle.new({ body: (block_given? ? yield : body), as: :a, **html_options, theme: nil, nav_link: true }, view_context).render
          else
            content_tag(:a, html_options) do
              if icon
                Bootstrap4Rails::Components::Foundations::Icon.new({ traits: [icon], text: (block_given? ? yield : body) }, view_context).render
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
