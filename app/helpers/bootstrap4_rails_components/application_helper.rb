# frozen_string_literal: true

module Bootstrap4RailsComponents
  # Core rendering helper methods
  module ApplicationHelper
    # `ui` is an initiator method so that this system allows for
    # extension when used in a cascade of frameworks, for example when
    # building a custom design system that is based on Bootstrap4.
    # One would utilize this the `ui` method to initiate this engine
    # and then call a specific framework / system as a second method.
    #
    # Example use for bootstrap4:
    # <%= ui.bootstrap(:my_component, :optional_trait1, :optional_trait2, option: :value, option2: :value2) %>
    #
    # Real-world usage:
    # A normal button link with a tooltip:
    # <%= ui.bootstrap(:button, :primary, body: 'Get Started', href: marketing_page_path, tooltip: 'Save big!') %>
    #
    # A complex ajax-y delete button:
    # <%= ui.bootstrap(:button, :primary, disabled: user.payments.any?, method: :delete, href: user_path(user), confirm: "Please confirm #{user.name} should be deleted", disable_with: ui.bootstrap(:icon, :loader), remote: true, tooltip: "Permanently delete #{user.name}" render_if: user.admin?) %>
    def ui
      @ui ||= Bootstrap4RailsComponents::UI::Base.new(get_view_context)
    end

    private

    # In the event that a controller isn't defined, we'll supply ApplicationController's view_context, instead.
    # While not ideal, this'll work for basic implementation scenarios that aren't leaning heavily on the
    # view_context in play.
    def get_view_context
      if defined?(controller) && controller.present?
        controller.view_context
      else
        ApplicationController.new.view_context
      end
    end
  end
end
