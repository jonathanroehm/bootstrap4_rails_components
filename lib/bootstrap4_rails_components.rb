# frozen_string_literal: true

require 'bootstrap4_rails_components/engine'

module Bootstrap4RailsComponents
  require 'bootstrap'
  require 'haml'
  require 'jquery-rails'
  require 'sass-rails'

  DEFAULT_BOOTSTRAP_THEME    = :primary

  BOOTSTRAP_THEMES           = %i[primary
                                  secondary
                                  success
                                  danger
                                  warning
                                  info
                                  light
                                  dark].freeze

  BOOTSTRAP_COMPONENT_NAMES  = %i[alert
                                  badge
                                  breadcrumb
                                  breadcrumb_item
                                  button
                                  button_group
                                  button_toolbar
                                  card
                                  card_body
                                  card_footer
                                  card_header
                                  card_image
                                  card_image_overlay
                                  carousel
                                  carousel_caption
                                  carousel_control
                                  carousel_indicators
                                  carousel_item
                                  collapse
                                  dropdown
                                  dropdown_divider
                                  dropdown_header
                                  dropdown_item
                                  dropdown_menu
                                  dropdown_toggle
                                  embed
                                  form
                                  input_group
                                  jumbotron
                                  list_group
                                  list_group_item
                                  media
                                  media_body
                                  media_object
                                  modal
                                  modal_body
                                  modal_footer
                                  modal_header
                                  nav
                                  nav_item
                                  nav_link
                                  navbar
                                  navbar_brand
                                  navbar_nav
                                  navbar_text
                                  navbar_toggler
                                  page_item
                                  pagination
                                  popover
                                  progress
                                  tab_content
                                  tab_pane
                                  table].freeze
end