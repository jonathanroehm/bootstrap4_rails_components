require 'rails_helper'

RSpec.describe Bootstrap4RailsComponents::Bootstrap::Utilities::Sizable do
  # Button is sizable
  let(:button) { FactoryBot.create(:bootstrap_button, **options) }
  let(:options) { { size: tested_size } }
  let(:tested_size) { nil }

  describe '#size' do
    let(:tested_size) { :sm }
    subject { button.size }
    it { is_expected.to eq tested_size }
  end

  describe 'private methods' do
    describe '#css_classes' do
      subject { button.send(:css_classes) }

      context 'when size is a valid size' do
        context 'when size is :lg' do
          let(:tested_size) { :lg }
          it { is_expected.to eq 'btn btn-lg btn-primary' }
        end

        context 'when size is :sm' do
          let(:tested_size) { :sm }
          it { is_expected.to eq 'btn btn-sm btn-primary' }
        end
      end

      context 'when size is not a valid size' do
        let(:tested_size) { :invalid }
        it { is_expected.to eq 'btn btn-primary' }
        it { is_expected.not_to include "btn-#{tested_size}" }
      end

      context 'when size is not present in options' do
        let(:options) { {} }
        it { is_expected.to eq 'btn btn-primary' }
      end
    end

    describe '#non_html_attribute_options' do
      subject { button.send(:non_html_attribute_options) }
      it { is_expected.to include :size }
    end

    describe '#resized?' do
      subject { button.send(:resized?) }
      context 'when size is :sm' do
        let(:tested_size) { :sm }
        it { is_expected.to be }
      end

      context 'when size is :lg' do
        let(:tested_size) { :lg }
        it { is_expected.to be }
      end

      context 'when size is not :sm or :lg' do
        let(:tested_size) { :invalid }
        it { is_expected.to be false }
      end

      context 'when size is nil' do
        let(:tested_size) { nil }

        it { is_expected.to be_falsey }
      end
    end

    describe '#size_css_class' do
      subject { button.send(:size_css_class) }
      let(:options) { { size: :lg } }
      it { is_expected.to eq 'btn-lg' }
    end

    describe '#size_css_class_prefix' do
      subject { button.send(:size_css_class) }
      let(:options) { { size: :lg } }
      subject { button.send(:size_css_class_prefix) }
      it 'uses the component css class as the prefix' do
        expect(subject).to eq button.send(:component_css_class)
      end
    end
  end
end
