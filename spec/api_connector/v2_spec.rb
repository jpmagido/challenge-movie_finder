require_relative '../../lib/api_connector/v2'

RSpec.describe ApiConnector::V2 do
  subject(:response) { described_class.new(url) }

  let(:url) { 'https://api.themoviedb.org/3/movie/76341' }

  it 'connects' do
    expect { response }.not_to raise_error
  end

  describe 'fetch' do
    it { expect(response.body).to be_a String }
    it { expect(response.header).to be_a Net::HTTPSuccess }
    it { expect(response.parsed_body).to be_a Hash }
  end
end
