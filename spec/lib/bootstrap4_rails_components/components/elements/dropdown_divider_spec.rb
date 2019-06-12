require 'rails_helper'

RSpec.describe Bootstrap4RailsComponents::Components::Elements::DropdownDivider do
  let(:dropdown_divider) { described_class.new(options, ActionController::Base.new.view_context) }
  let(:options) { {} }
  it { expect(described_class).to be < Bootstrap4RailsComponents::Bootstrap::Components::DropdownDivider }
  it_behaves_like 'a component with a consistent initalized construction'
  it_behaves_like 'a component that includes the Describable utility module'
  it_behaves_like 'a component that includes the Renderable utility module'

  it { expect(described_class.included_modules).to include Bootstrap4RailsComponents::Components::Utilities::Traitable }
end
