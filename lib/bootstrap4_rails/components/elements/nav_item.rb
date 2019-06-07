# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Nav doc coming soon
      class NavItem < Bootstrap4Rails::Bootstrap::Components::NavItem
        include Bootstrap::Utilities::Tooltipable

        include Bootstrap4Rails::Components::Utilities::Iconable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
        include Bootstrap4Rails::Components::Utilities::Traitable

        include Bootstrap4Rails::Components::Traits::Active
        include Bootstrap4Rails::Components::Traits::Disable
        include Bootstrap4Rails::Components::Traits::NavItem
        include Bootstrap4Rails::Components::Traits::Remote

        def render
          content_tag(as, html_options) do
            if include_nav_link?
              concat(Bootstrap4Rails::Components::Elements::NavLink.new({ body: (button ? button : (block_given? ? yield : body)), active: active, disabled: disabled, dropdown: dropdown, tab: tab, remote: remote, href: (tab || href), icon: icon }, view_context).render)
              if dropdown
                concat(block_given? ? yield : body)
              end
            else
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
