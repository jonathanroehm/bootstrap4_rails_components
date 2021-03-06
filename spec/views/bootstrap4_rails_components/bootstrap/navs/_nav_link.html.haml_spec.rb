require 'rails_helper'

RSpec.describe 'bootstrap4_rails_components/bootstrap/navs/_nav_link.html.haml', type: :view do
  let(:body) { 'test body content' }
  let(:nav_link) { FactoryBot.create(:bootstrap_nav_link, body: body, **options) }
  let(:options) { {} }
  subject { nav_link.render }

  it 'outputs a bootstrap nav link component in html' do
    expect(subject).to have_selector 'a.nav-link', text: body
    expect(subject).to eq "<a class=\"nav-link\">#{body}</a>"
  end

  context 'when nav_link is being used as a dropdown' do
    let(:options) { { dropdown: true } }
    it 'outputs an <a> tag as a dropdown toggle without the .btn class' do
      expect(subject).to have_css 'a.dropdown-toggle.nav-link'
      expect(subject).to eq "<a class=\"dropdown-toggle nav-link\" data-toggle=\"dropdown\" href=\"#\" aria-haspopup=\"true\" aria-expanded=\"false\">#{body}</a>"
    end

    context 'when attempting to adjust the :as options' do
      let(:as) { { as: :p } }
      it 'does not adjust the wrapper element' do
        expect(subject).not_to have_css 'p.nav-link'
        expect(subject).to have_css 'a.dropdown-toggle.nav-link'
      end
    end
  end
end
