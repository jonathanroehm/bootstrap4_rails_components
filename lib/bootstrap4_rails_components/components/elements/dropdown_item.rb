# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Ino coming soon.
      class DropdownItem < Bootstrap4RailsComponents::Bootstrap::Components::DropdownItem
        include Bootstrap::Utilities::Themeable
        include Bootstrap::Utilities::Modalable

        include Bootstrap4RailsComponents::Components::Utilities::Confirmable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::DisableWithable
        include Bootstrap4RailsComponents::Components::Utilities::Iconable
        include Bootstrap4RailsComponents::Components::Utilities::Methodable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
        include Bootstrap4RailsComponents::Components::Utilities::Traitable

        include Bootstrap4RailsComponents::Components::Traits::Remote
        include Bootstrap4RailsComponents::Components::Traits::Active
        include Bootstrap4RailsComponents::Components::Traits::DisableWith
        include Bootstrap4RailsComponents::Components::Traits::Disable
        include Bootstrap4RailsComponents::Components::Traits::Theme

        def render
          if tooltip && disabled
            content_tag(:span, disabled_component_tooltip_wrapper_html_options) do
              content_tag(as, html_options.except(:href)) do
                if icon
                  Bootstrap4RailsComponents::Components::Foundations::Icon.new({ traits: ["#{icon} fw"], text: (block_given? ? yield : body), class: 'text-center' }, view_context).render
                else
                  (block_given? ? yield : body)
                end
              end
            end
          else
            super do
              if icon
                Bootstrap4RailsComponents::Components::Foundations::Icon.new({ traits: ["#{icon} fw"], text: (block_given? ? yield : body), class: 'text-center' }, view_context).render
              else
                (block_given? ? yield : body)
              end
            end
          end
        end

        # Automatically supply an :href to the dropdown item when a modal is present
        # so that the dropdown item presents correctly and appears clickable
        def href
          modal ? options.fetch(:href, '#') : super
        end

        private

        def base_element
          as
        end

        def default_theme
          nil
        end

        def theme_css_class_prefix
          'text-'
        end

        def outlineable?
          false
        end

        # Other classes inherit DropdownItem (ex: SlatAction)
        def component_css_class
          'dropdown-item'
        end
      end
    end
  end
end
