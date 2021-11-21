require_relative '../../lib/builder/url'

RSpec.describe Builder::Url do
  it '#languages' do
    expect(described_class.languages).to eq 'https://api.themoviedb.org/3/configuration/languages'
  end
end