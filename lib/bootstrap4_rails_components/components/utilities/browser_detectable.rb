# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Utilities
      # Add browser detection to the desired component
      module BrowserDetectable
        require 'browser'

        def browser
          Browser.new(user_agent: view_context.request.env['HTTP_USER_AGENT'])
        end
      end
    end
  end
end
