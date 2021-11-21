# frozen_string_literal: true

require_relative '../lib/client'

RSpec.describe Client do
  it 'returns all supported languages' do
    expect(described_class.supported_languages).to be_an Array
  end

  it 'returns basic url of TMDB' do
    expect(described_class.base_url).to eq 'https://api.themoviedb.org/3'
  end
end
