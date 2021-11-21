# frozen_string_literal: true

require_relative '../../lib/builder/query'

RSpec.describe Builder::Query do
  it { expect { described_class.new('horror') }.not_to raise_error }
end
