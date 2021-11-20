require_relative '../../../lib/api_connector/v1'

RSpec.describe ApiConnector::V1 do
  subject(:response) { described_class.new.process }

  it 'connects' do
    expect { response }.not_to raise_error
  end

  describe 'fetch' do
    it { expect(response.code).to eq '200' }
    it { expect(response.body).to be_a String }
    it { expect(response).to be_a Net::HTTPSuccess }
  end
end
