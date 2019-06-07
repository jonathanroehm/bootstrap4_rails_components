# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # FormControl doc coming soon
      class FormControl < Bootstrap4Rails::Components::Base
        def render
          # this is a place holder, to indicate that this
          # component is not yet rendering a true bootstrap element
          content_tag(:b, class: 'text-danger') do
            'Form Control Element Component'
          end
        end
      end
    end
  end
end
