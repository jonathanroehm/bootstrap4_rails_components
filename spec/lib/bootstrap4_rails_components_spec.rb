require 'rails_helper'

RSpec.describe Bootstrap4RailsComponents do
  describe 'Registered themes & components for Bootstrap 4' do
    describe 'Registered Bootstrap 4 themes' do
      it 'contains the approved list of themes as of Bootstrap 4.1' do
        expect(Bootstrap4RailsComponents::BOOTSTRAP_THEMES).to eq %i[primary
                                                 secondary
                                                 success
                                                 danger
                                                 warning
                                                 info
                                                 light
                                                 dark]
      end
    end

    describe 'Registered Bootstrap 4 components' do
      it 'contains the approved list of components as of Bootstrap 4.1' do
        expect(Bootstrap4RailsComponents::BOOTSTRAP_COMPONENT_NAMES).to eq %i[alert
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
                                                          table]
      end
    end
  end
end
