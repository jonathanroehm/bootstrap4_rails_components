#= require jquery3
#= require popper
#= require select2
#= require bootstrap

#= require_self
#= require bootstrap4_rails/collapsible_toggle
#= require bootstrap4_rails/vendor/select2
#= require bootstrap4_rails/vendor/tooltips

window.Bootstrap4Rails = {}

if $("head [data-turbolinks-track='reload']").length
  window.Bootstrap4Rails.readyOrTurbolinksLoad = "turbolinks:load"
else
  window.Bootstrap4Rails.readyOrTurbolinksLoad = "ready"
