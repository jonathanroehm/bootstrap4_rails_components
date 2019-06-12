# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # ProgressBar doc coming soon
      class ProgressBar < Bootstrap4RailsComponents::Bootstrap::Components::ProgressBar
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable


        # include Bootstrap::Utilities::Tooltipable

        include Bootstrap4RailsComponents::Components::Traits::Theme
        # include Bootstrap4RailsComponents::Components::Traits::Size
        include Bootstrap4RailsComponents::Components::Traits::ProgressBar

        # # need to pass the tooltip to the wrapper
        # def data
        #   tooltip ? super.except(:toggle, :placement, :html) : super
        # end

        # def html_options
        #   # return super unless tooltip || size
        #   tooltip ? super.except(:title) : super
        # end

        # def progress_wrapper_html_options
        #   # return super unless tooltip || size
        #   # if tooltip
        #   #   super.merge!(data: tooltip_data_attributes, title: tooltip)
        #   # end

        #   # if resized?
        #   #   super.merge!(class: "#{size_css_class_prefix}-#{size}")
        #   # end
        #   super.merge!(**(tooltip ? { data: tooltip_data_attributes, title: tooltip } : {}),
        #                **(resized? ? { class: ['progress', size_css_class].join(' ').squish } : {}))
        # end

        # private

        # def size_css_class_prefix
        #   'progress'
        # end

        # # def size_css_class_prefix
        # #   'progress'
        # # end
        # def non_html_attribute_options
        #   super.push(:render_if, :render_unless)
        # end

        # def css_classes
        #   super.gsub(size_css_class, '')
        # #   resized? ? super.slice!(size_css_class) : super
        # end
      end
    end
  end
end
