require 'rails_helper'

RSpec.describe Bootstrap4Rails::Components::Elements::MediaObject do
  let(:media_object) { described_class.new(options, ActionController::Base.new.view_context) }
  let(:options) { {} }
  it { expect(described_class).to be < Bootstrap4Rails::Bootstrap::Components::MediaObject }
  it_behaves_like 'a component with a consistent initalized construction'
  it_behaves_like 'a component that includes the Renderable utility module'
end
