# frozen_string_literal: true

require_relative '../../lib/builder/url'

RSpec.describe Builder::Url do
  describe '.new' do
    it { expect { described_class.new(params: 'horror') }.not_to raise_error }
    it { expect { described_class.new(params: true) }.to raise_error StandardError }
    it { expect { described_class.new(params: 10) }.to raise_error StandardError }
    it { expect { described_class.new(params: []) }.to raise_error StandardError }
  end

  describe '#languages' do
    it { expect(described_class.languages_url).to eq 'https://api.themoviedb.org/3/configuration/languages' }
  end

  describe '.complete_url' do
    url = 'https://api.themoviedb.org/3horror&language=en'
    it { expect(described_class.new(params: 'horror').complete_url).to eq url }
  end
end
