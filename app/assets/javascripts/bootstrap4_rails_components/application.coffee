#= require jquery3
#= require popper
#= require select2
#= require bootstrap

#= require_self
#= require bootstrap4_rails_components/collapsible_toggle
#= require bootstrap4_rails_components/vendor/select2
#= require bootstrap4_rails_components/vendor/tooltips

window.Bootstrap4RailsComponents = {}

if $("head [data-turbolinks-track='reload']").length
  window.Bootstrap4RailsComponents.readyOrTurbolinksLoad = "turbolinks:load"
else
  window.Bootstrap4RailsComponents.readyOrTurbolinksLoad = "ready"
