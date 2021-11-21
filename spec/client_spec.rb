require_relative '../lib/client'

RSpec.describe Client do
  it 'returns all supported languages' do
    expect(described_class.languages).to be_an Array
  end
end
