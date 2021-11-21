require_relative '../../lib/builder/url'

RSpec.describe Builder::Url do
  it '#languages' do
    expect(described_class.languages).to eq 'https://api.themoviedb.org/3/configuration/languages'
  end

  it '.complete_url' do
    expect(described_class.new(params: 'horror').complete_url).to eq 'https://api.themoviedb.org/3horror&language=en'
  end
end
