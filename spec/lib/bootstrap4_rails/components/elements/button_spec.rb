require 'rails_helper'

RSpec.describe Bootstrap4Rails::Components::Elements::Button do
  let(:button) { described_class.new(options, ActionController::Base.new.view_context) }
  let(:options) { {} }
  it { expect(described_class).to be < Bootstrap4Rails::Bootstrap::Components::Button }
  it_behaves_like 'a component with a consistent initalized construction'
  it_behaves_like 'a component that includes the Iconable utility module'
  it_behaves_like 'a component that includes the Describable utility module'
  it_behaves_like 'a component that includes the Renderable utility module'

  it_behaves_like 'a component that includes the Size trait module'
  it_behaves_like 'a component that includes the Theme trait module'

  it { expect(described_class.included_modules).to include Bootstrap4Rails::Components::Utilities::Traitable }

  pending 'button spec needs specs'
end
