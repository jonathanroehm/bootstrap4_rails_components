Rails.application.routes.draw do
  mount Bootstrap4Rails::Engine => '/bootstrap4_rails'
  root 'dashboard#index'
  resources :dashboard, only: [:index]

  namespace :bootstrap do
    Bootstrap4Rails::BOOTSTRAP_COMPONENT_NAMES.each do |resource|
      resources resource.to_s.pluralize.to_sym, only: [:index]
    end
    get 'tabs', to: 'tabs#index', as: 'tabs'
  end

  namespace :elements do
    Bootstrap4Rails::ELEMENT_COMPONENT_NAMES.each do |resource|
      resources resource.to_s.pluralize.to_sym, only: [:index]
    end
  end

  namespace :foundations do
    Bootstrap4Rails::FOUNDATION_COMPONENT_NAMES.each do |resource|
      resources resource.to_s.pluralize.to_sym, only: [:index]
    end
  end

  namespace :patterns do
    Bootstrap4Rails::PATTERN_COMPONENT_NAMES.each do |resource|
      next if resource == :slat
      resources resource.to_s.pluralize.to_sym, only: [:index]
    end
    get 'tabs', to: 'tabs#index', as: 'tabs'
  end

  resource :feature_spec_views do
    get :modal
    get :tooltip
  end
end
