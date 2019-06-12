Rails.application.routes.draw do
  mount Bootstrap4RailsComponents::Engine => '/bootstrap4_rails_components'
  root 'dashboard#index'
  resources :dashboard, only: [:index]

  namespace :bootstrap do
    Bootstrap4RailsComponents::BOOTSTRAP_COMPONENT_NAMES.each do |resource|
      resources resource.to_s.pluralize.to_sym, only: [:index]
    end
    get 'tabs', to: 'tabs#index', as: 'tabs'
  end

  resource :feature_spec_views do
    get :modal
    get :tooltip
  end
end
