# Additional info on using FactoryBot without an ORM
# https://robots.thoughtbot.com/tips-for-using-factory-girl-without-an-orm
FactoryBot.define do
  factory :bootstrap_base, class: Bootstrap4Rails::Bootstrap::Components::Base do
    id { nil }
    data { nil }
    body { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }
  end

  factory :bootstrap_alert, class: Bootstrap4Rails::Bootstrap::Components::Alert do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:alert, attributes) }
    end
  end

  factory :bootstrap_badge, class: Bootstrap4Rails::Bootstrap::Components::Badge do
    body { nil }
    data { nil }
    id { nil }
    pill { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:badge, attributes) }
    end
  end

  factory :bootstrap_breadcrumb, class: Bootstrap4Rails::Bootstrap::Components::Breadcrumb do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:breadcrumb, attributes) }
    end
  end

  factory :bootstrap_breadcrumb_item, class: Bootstrap4Rails::Bootstrap::Components::BreadcrumbItem do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:breadcrumb_item, attributes) }
    end
  end

  factory :bootstrap_button, class: Bootstrap4Rails::Bootstrap::Components::Button do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:button, attributes) }
    end
  end

  factory :bootstrap_button_group, class: Bootstrap4Rails::Bootstrap::Components::ButtonGroup do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:button_group, attributes) }
    end
  end

  factory :bootstrap_button_toolbar, class: Bootstrap4Rails::Bootstrap::Components::ButtonToolbar do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:button_toolbar, attributes) }
    end
  end

  factory :bootstrap_card, class: Bootstrap4Rails::Bootstrap::Components::Card do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:card, attributes) }
    end
  end

  factory :bootstrap_card_body, class: Bootstrap4Rails::Bootstrap::Components::CardBody do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:card_body, attributes) }
    end
  end

  factory :bootstrap_card_footer, class: Bootstrap4Rails::Bootstrap::Components::CardFooter do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:card_footer, attributes) }
    end
  end

  factory :bootstrap_card_header, class: Bootstrap4Rails::Bootstrap::Components::CardHeader do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:card_header, attributes) }
    end
  end

  factory :bootstrap_card_image, class: Bootstrap4Rails::Bootstrap::Components::CardImage do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:card_image, attributes) }
    end
  end

  factory :bootstrap_card_image_overlay, class: Bootstrap4Rails::Bootstrap::Components::CardImageOverlay do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:card_image_overlay, attributes) }
    end
  end

  factory :bootstrap_carousel, class: Bootstrap4Rails::Bootstrap::Components::Carousel do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:carousel, attributes) }
    end
  end

  factory :bootstrap_carousel_caption, class: Bootstrap4Rails::Bootstrap::Components::CarouselCaption do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:carousel_caption, attributes) }
    end
  end

  factory :bootstrap_carousel_control, class: Bootstrap4Rails::Bootstrap::Components::CarouselControl do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:carousel_control, attributes) }
    end
  end

  factory :bootstrap_carousel_indicators, class: Bootstrap4Rails::Bootstrap::Components::CarouselIndicators do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:carousel_indicators, attributes) }
    end
  end

  factory :bootstrap_carousel_item, class: Bootstrap4Rails::Bootstrap::Components::CarouselItem do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:carousel_item, attributes) }
    end
  end

  factory :bootstrap_collapse, class: Bootstrap4Rails::Bootstrap::Components::Collapse do
    body { nil }
    data { nil }
    id { "collapse_id" }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:collapse, attributes) }
    end
  end

  factory :bootstrap_dropdown, class: Bootstrap4Rails::Bootstrap::Components::Dropdown do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:dropdown, attributes) }
    end
  end

  factory :bootstrap_dropdown_divider, class: Bootstrap4Rails::Bootstrap::Components::DropdownDivider do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:dropdown_divider, attributes) }
    end
  end

  factory :bootstrap_dropdown_header, class: Bootstrap4Rails::Bootstrap::Components::DropdownHeader do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:dropdown_header, attributes) }
    end
  end

  factory :bootstrap_dropdown_item, class: Bootstrap4Rails::Bootstrap::Components::DropdownItem do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:dropdown_item, attributes) }
    end
  end

  factory :bootstrap_dropdown_menu, class: Bootstrap4Rails::Bootstrap::Components::DropdownMenu do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:dropdown_menu, attributes) }
    end
  end

  factory :bootstrap_dropdown_toggle, class: Bootstrap4Rails::Bootstrap::Components::DropdownToggle do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:dropdown_toggle, attributes) }
    end
  end

  factory :bootstrap_embed, class: Bootstrap4Rails::Bootstrap::Components::Embed do
    body { nil }
    data { nil }
    id { nil }
    aspect_ratio { '16:9' }
    iframe { 'http://www.google.com' }
    autoplay { false }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:embed, attributes) }
    end
  end

  factory :bootstrap_form, class: Bootstrap4Rails::Bootstrap::Components::Form do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:form, attributes) }
    end
  end

  factory :bootstrap_input_group, class: Bootstrap4Rails::Bootstrap::Components::InputGroup do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:input_group, attributes) }
    end
  end

  factory :bootstrap_jumbotron, class: Bootstrap4Rails::Bootstrap::Components::Jumbotron do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:jumbotron, attributes) }
    end
  end

  factory :bootstrap_list_group, class: Bootstrap4Rails::Bootstrap::Components::ListGroup do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:list_group, attributes) }
    end
  end

  factory :bootstrap_list_group_item, class: Bootstrap4Rails::Bootstrap::Components::ListGroupItem do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:list_group_item, attributes) }
    end
  end

  factory :bootstrap_media, class: Bootstrap4Rails::Bootstrap::Components::Media do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:media, attributes) }
    end
  end

  factory :bootstrap_media_body, class: Bootstrap4Rails::Bootstrap::Components::MediaBody do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:media_body, attributes) }
    end
  end

  factory :bootstrap_media_object, class: Bootstrap4Rails::Bootstrap::Components::MediaObject do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:media_object, attributes) }
    end
  end

  factory :bootstrap_modal, class: Bootstrap4Rails::Bootstrap::Components::Modal do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:modal, attributes) }
    end
  end

  factory :bootstrap_modal_header, class: Bootstrap4Rails::Bootstrap::Components::ModalHeader do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:modal_header, attributes) }
    end
  end

  factory :bootstrap_modal_body, class: Bootstrap4Rails::Bootstrap::Components::ModalBody do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:modal_body, attributes) }
    end
  end

  factory :bootstrap_modal_footer, class: Bootstrap4Rails::Bootstrap::Components::ModalFooter do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:modal_footer, attributes) }
    end
  end

  factory :bootstrap_nav, class: Bootstrap4Rails::Bootstrap::Components::Nav do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:nav, attributes) }
    end
  end

  factory :bootstrap_nav_item, class: Bootstrap4Rails::Bootstrap::Components::NavItem do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:nav_item, attributes) }
    end
  end

  factory :bootstrap_nav_link, class: Bootstrap4Rails::Bootstrap::Components::NavLink do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:nav_link, attributes) }
    end
  end

  factory :bootstrap_navbar, class: Bootstrap4Rails::Bootstrap::Components::Navbar do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:navbar, attributes) }
    end
  end

  factory :bootstrap_navbar_brand, class: Bootstrap4Rails::Bootstrap::Components::NavbarBrand do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:navbar_brand, attributes) }
    end
  end

  factory :bootstrap_navbar_nav, class: Bootstrap4Rails::Bootstrap::Components::NavbarNav do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:navbar_nav, attributes) }
    end
  end

  factory :bootstrap_navbar_text, class: Bootstrap4Rails::Bootstrap::Components::NavbarText do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:navbar_text, attributes) }
    end
  end

  factory :bootstrap_navbar_toggler, class: Bootstrap4Rails::Bootstrap::Components::NavbarToggler do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:navbar_toggler, attributes) }
    end
  end

  factory :bootstrap_page_item, class: Bootstrap4Rails::Bootstrap::Components::PageItem do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:page_item, attributes) }
    end
  end

  factory :bootstrap_pagination, class: Bootstrap4Rails::Bootstrap::Components::Pagination do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:pagination, attributes) }
    end
  end

  factory :bootstrap_popover, class: Bootstrap4Rails::Bootstrap::Components::Popover do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:popover, attributes) }
    end
  end

  factory :bootstrap_progress, class: Bootstrap4Rails::Bootstrap::Components::Progress do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:progress, attributes) }
    end
  end

  factory :bootstrap_progress_bar, class: Bootstrap4Rails::Bootstrap::Components::ProgressBar do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:progress_bar, attributes) }
    end
  end

  factory :bootstrap_tab_content, class: Bootstrap4Rails::Bootstrap::Components::TabContent do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:tab_content, attributes) }
    end
  end

  factory :bootstrap_tab_pane, class: Bootstrap4Rails::Bootstrap::Components::TabPane do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:table, attributes) }
    end
  end

  factory :bootstrap_table, class: Bootstrap4Rails::Bootstrap::Components::Table do
    body { nil }
    data { nil }
    id { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4Rails::UI::Base.new(ActionController::Base.new.view_context)
                                       .bootstrap(:table, attributes) }
    end
  end
end
