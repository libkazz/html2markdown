require 'spec_helper'

describe Html2Markdown do
  it 'has a version number' do
    expect(Html2Markdown::VERSION).not_to be nil
  end

  describe '.convert' do
    subject { described_class::Converter.convert(html) }

    context 'Link tag' do
      let(:html) { '<a href="#">some link</a>' }

      it do
        expect(subject).to eq "[some link](#)\n\n"
      end
    end

    context 'div tag' do
      let(:html) { '<div>some text</div>' }

      it do
        expect(subject).to eq "some text\n\n"
      end
    end

    context 'p tag' do
      let(:html) { '<p>some text</p>' }

      it do
        expect(subject).to eq "some text\n\n"
      end
    end

    context 'ul-li tag' do
      let(:html) { '<ul><li>some list 1</li><li>some list 2</li></ul>' }

      it do
        expect(subject).to eq "- some list 1\n- some list 2\n\n"
      end
    end

    context 'ol-li tag' do
      let(:html) { '<ol><li>some list 1</li><li>some list 2</li></ol>' }

      it do
        expect(subject).to eq "1. some list 1\n1. some list 2\n\n"
      end
    end

    context 'dl-dt-dd tag' do
      let(:html) { '<dl><dt>some term 1</dt><dd>some desc 1</dd></dl>' }

      it do
        expect(subject).to eq "some term 1\n: some desc 1\n\n"
      end
    end

    context 'image tag' do
      let(:html) { '<img src="img.png" alt="some image">' }

      it do
        expect(subject).to eq "![some image](img.png)\n\n"
      end
    end
  end
end
