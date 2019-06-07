require 'rails_helper'

RSpec.describe Bootstrap4Rails::Components::Patterns::Carousel do
  let(:carousel) { described_class.new(options, ActionController::Base.new.view_context) }
  let(:rendered) { carousel.render }
  let(:options) { {} }
  it { expect(described_class).to be < Bootstrap4Rails::Bootstrap::Components::Carousel }
  it_behaves_like 'a component with a consistent initalized construction'
  it_behaves_like 'a component that includes the Describable utility module'
  it_behaves_like 'a component that includes the Renderable utility module'

  it { expect(described_class.included_modules).to include Bootstrap4Rails::Components::Utilities::Traitable }


  describe '#render' do
    subject { Capybara.string(rendered) }

    it 'includes a unique padding on the inner carousel that is designed to facilitate a text-based carousel like a donor scroll instead of a hero banner image-based carousel' do
      expect(subject).to have_css '.carousel-inner.pb-3'
    end

  end
end
