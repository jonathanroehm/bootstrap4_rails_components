# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Alert doesn't have any customizations unique to the design system yet
      # As such, the NFG UI alert is simply a bootstrap alert behind the scenes.
      # Traits will eventually be connected here.
      class Alert < Bootstrap4RailsComponents::Bootstrap::Components::Alert
        include Bootstrap4RailsComponents::Components::Utilities::Iconable
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

        include Bootstrap4RailsComponents::Components::Traits::Alert
        include Bootstrap4RailsComponents::Components::Traits::Dismiss
        include Bootstrap4RailsComponents::Components::Traits::Theme

        def render
          # NOTE: concat statement must be surrounded by capture blocks.
          # If you see duplication of content, it is likely because that
          # a concat has been called outside of a capture block.
          # This is specifically true when some of those concats are nested
          # or are within a block defined within the capture block
          content_tag(:div, html_options) do
            capture do
              if dismissible
                concat(Bootstrap4RailsComponents::Components::Elements::Button.new({ traits: [:close], dismiss: :alert }, view_context).render)
              end

              if icon
                concat(Bootstrap4RailsComponents::Components::Patterns::Media.new({}, view_context).render {
                  capture do

                    concat(Bootstrap4RailsComponents::Components::Elements::MediaObject.new({}, view_context).render {
                      content_tag(:div, class: 'mr-2') do
                        Bootstrap4RailsComponents::Components::Foundations::Icon.new({ traits: [icon] }, view_context).render
                      end
                    })
                    concat(Bootstrap4RailsComponents::Components::Elements::MediaBody.new({}, view_context).render {
                      capture do
                        if heading
                          concat(Bootstrap4RailsComponents::Components::Foundations::Typeface.new({ heading: heading, class: 'alert-heading' }, view_context).render)
                        end
                        concat(block_given? ? yield : body)
                      end
                    })
                  end
                })
              else
                if heading
                  concat(Bootstrap4RailsComponents::Components::Foundations::Typeface.new({ heading: heading, class: 'alert-heading' }, view_context).render)
                end

                concat(block_given? ? yield : body)
              end
            end
          end
        end
      end
    end
  end
end
