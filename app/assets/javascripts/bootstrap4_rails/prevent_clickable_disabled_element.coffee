# It is necessary to include window.Bootstrap4Rails = {}
# Because several legacy evo JS files
# Are `require`ing this file. This makes it easier
# To just drop in a //= require bootstrap4_rails/prevent_clickable_disabled_element
# Once we've transitioned over to bootstrap4_rails managing Evo's javascript
# This window.Bootstrap4Rails = {} should be removed
window.Bootstrap4Rails = {}

class Bootstrap4Rails.PreventClickableDisabledElement
  constructor: (@el) ->
    @el.click (e) =>
      @preventClick e

  preventClick: (e) ->
    if IE(10)
      e.preventDefault()

  # IE version checker from https://stackoverflow.com/a/16136040
  IE = (v) ->
    RegExp('msie' + (if !isNaN(v) then '\\s' + v else ''), 'i').test navigator.userAgent

init_plugin = (el) ->
  el.each ->
    inst = new Bootstrap4Rails.PreventClickableDisabledElement $(@)

$ ->
  elSelectorClass = '.disabled'
  elAttribute = '[disabled]'

  $(document).on 'ajax:success', (e, xhr, settings) ->
    if $(elSelectorClass).length
      init_plugin $(elSelectorClass)
    if $(elAttribute).length
      # We check for .disabled first, if it's got the css class
      # then it's already been initialized.
      unless $(elAttribute).hasClass 'disabled'
        # Otherwise, initialize using $('[disabled]')
        init_plugin $(elAttribute)

  if $(elSelectorClass).length
      init_plugin $(elSelectorClass)

  if $(elAttribute).length
    unless $(elAttribute).hasClass 'disabled'
      init_plugin $(elAttribute)


