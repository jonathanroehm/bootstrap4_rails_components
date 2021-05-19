$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'bootstrap4_rails_components/version'

Gem::Specification.new do |s|
  s.name        = 'bootstrap4_rails_components'
  s.version     = Bootstrap4RailsComponents::VERSION
  s.authors     = ['Jonathan Roehm']
  s.email       = ['jonroehm@gmail.com']
  s.homepage    = 'https://github.com/jonathanroehm/bootstrap4_rails_components'
  s.summary     = 'Bootstrap4 view helper methods that generate semantic Bootstrap4 html components'
  s.description = "Implementation of view helper methods that utilize robust options and traits to generate semantic Bootstrap4 HTML for Ruby on Rails. Supply themes, rails helper options (such as :method and :confirm for a `link_to`). Example usage: `<%= ui.bootstrap :button, :primary, :block, href: user_path(@user), method: :delete, confirm: 'Are you sure?', tooltip: 'Adds a new user' %>` Which outputs a primary button with `btn-block` that uses rails method & confirm, and automatically supplies a tooltip (and there's much more!)"
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'bootstrap', '4.3.1'
  s.add_dependency 'jquery-rails', '~> 4.3'
  s.add_dependency 'rails', '>= 4.2.0'
  s.add_dependency 'sass-rails', '~> 5.0'

  # Bootstrap4.3.1 allows for upgrading past 9.4.10 which requires ruby >= 2.4.
  # When running `bundle update bootstrap4_rails_components` from Evo.
  # Evo is officially on ruby 2.3.7 so autoprefixef must
  # be manually set.
  #
  # TODO: explore if this is still necessary.
  # Ideally I would like the gem to have no dependencies other than bootstrap
  # The test app can use whatever it'd like.
  s.add_dependency 'autoprefixer-rails', '9.4.9'

  # Powering the test app and specs. To be trimmed down.
  s.add_development_dependency 'capybara', '~> 3.9'
  s.add_development_dependency 'chromedriver-helper', '~> 2.1'
  s.add_development_dependency 'factory_bot_rails', '~> 4.11'
  s.add_development_dependency 'puma', '~> 5.3'
  s.add_development_dependency 'rails-controller-testing', '~> 1.0' # for assert-template
  s.add_development_dependency 'rspec_junit_formatter', '~> 0.4'
  s.add_development_dependency 'rspec-rails', '~> 3.8'
  s.add_development_dependency 'selenium-webdriver', '~> 3.14'
  s.add_development_dependency 'simplecov', '~> 0.16'
  s.add_development_dependency 'sprockets', '~> 3.7', '>= 0'
  s.add_development_dependency 'sqlite3', '~> 1.3'
end