require 'rails_helper'

RSpec.describe Bootstrap4Rails::Components::Patterns::Collapse do
  let(:collapse) { described_class.new(options, ActionController::Base.new.view_context) }
  let(:options) { {} }
  it { expect(described_class).to be < Bootstrap4Rails::Bootstrap::Components::Collapse }
  it_behaves_like 'a component with a consistent initalized construction'
  it_behaves_like 'a component that includes the Describable utility module'
  it_behaves_like 'a component that includes the Headable utility module', component_suite: :nfg
  it_behaves_like 'a component that includes the Renderable utility module'

  it_behaves_like 'a component that includes the Collapse trait module'

  it { expect(described_class.included_modules).to include Bootstrap4Rails::Components::Utilities::Traitable }

  pending 'collapse needs spec'
end
