# Additional info on using FactoryBot without an ORM
# https://robots.thoughtbot.com/tips-for-using-factory-girl-without-an-orm
FactoryBot.define do
  factory :base, class: Bootstrap4RailsComponents::Components::Base do
    id { nil }
    data { nil }
    body { nil }

    skip_create
    initialize_with { new(attributes, ActionController::Base.new.view_context) }
  end

  factory :alert, class: Bootstrap4RailsComponents::Components::Elements::Alert do
    body { nil }
    traits { [] }

    skip_create
    initialize_with { new(attributes.merge!(traits: traits), ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4RailsComponents::UI::Base.new(ActionController::Base.new.view_context)
                                       .nfg(:alert, attributes) }
    end
  end

  factory :badge, class: Bootstrap4RailsComponents::Components::Elements::Badge do
    body { nil }
    traits { [] }

    skip_create
    initialize_with { new(attributes.merge!(traits: traits), ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4RailsComponents::UI::Base.new(ActionController::Base.new.view_context)
                                       .nfg(:badge, attributes) }
    end
  end

  factory :button, class: Bootstrap4RailsComponents::Components::Elements::Button do
    body { nil }
    traits { [] }

    skip_create
    initialize_with { new(attributes.merge!(traits: traits), ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4RailsComponents::UI::Base.new(ActionController::Base.new.view_context)
                                       .nfg(:button, attributes) }
    end
  end

  factory :icon, class: Bootstrap4RailsComponents::Components::Foundations::Icon do
    text { nil }
    icon { nil }
    id { nil }
    right { nil }
    traits { [] }

    skip_create
    initialize_with { new(attributes.merge!(traits: traits), ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4RailsComponents::UI::Base.new(ActionController::Base.new.view_context)
                                       .nfg(:icon, attributes) }
    end
  end

  factory :modal, class: Bootstrap4RailsComponents::Components::Patterns::Modal do
    body { nil }
    traits { [] }

    skip_create
    initialize_with { new(attributes.merge!(traits: traits), ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4RailsComponents::UI::Base.new(ActionController::Base.new.view_context)
                                       .nfg(:modal, attributes) }
    end
  end

  factory :page_header, class: Bootstrap4RailsComponents::Components::Patterns::PageHeader do
    body { nil }
    traits { [] }

    skip_create
    initialize_with { new(attributes.merge!(traits: traits), ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4RailsComponents::UI::Base.new(ActionController::Base.new.view_context)
                                       .nfg(:page_header, attributes) }
    end
  end

  factory :tile, class: Bootstrap4RailsComponents::Components::Patterns::Tile do
    body { nil }
    traits { [] }

    skip_create
    initialize_with { new(attributes.merge!(traits: traits), ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4RailsComponents::UI::Base.new(ActionController::Base.new.view_context)
                                       .nfg(:tile, attributes) }
    end
  end

  factory :tile_body, class: Bootstrap4RailsComponents::Components::Patterns::TileBody do
    body { nil }
    traits { [] }

    skip_create
    initialize_with { new(attributes.merge!(traits: traits), ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4RailsComponents::UI::Base.new(ActionController::Base.new.view_context)
                                       .nfg(:tile_body, attributes) }
    end
  end

  factory :tile_header, class: Bootstrap4RailsComponents::Components::Patterns::TileHeader do
    body { nil }
    traits { [] }

    skip_create
    initialize_with { new(attributes.merge!(traits: traits), ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4RailsComponents::UI::Base.new(ActionController::Base.new.view_context)
                                       .nfg(:tile_header, attributes) }
    end
  end

  factory :tile_section, class: Bootstrap4RailsComponents::Components::Patterns::TileSection do
    body { nil }
    traits { [] }

    skip_create
    initialize_with { new(attributes.merge!(traits: traits), ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4RailsComponents::UI::Base.new(ActionController::Base.new.view_context)
                                       .nfg(:tile_section, attributes) }
    end
  end

  factory :typeface, class: Bootstrap4RailsComponents::Components::Foundations::Typeface do
    body { nil }
    traits { [] }

    skip_create
    initialize_with { new(attributes.merge!(traits: traits), ActionController::Base.new.view_context) }

    trait :rendered do
      initialize_with { Bootstrap4RailsComponents::UI::Base.new(ActionController::Base.new.view_context)
                                       .nfg(:typeface, attributes) }
    end
  end
end
