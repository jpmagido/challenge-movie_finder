# frozen_string_literal: true

module Builder
  # Build parameters syntax for URL
  class Query
    def initialize(params)
      @params = params
    end

    def to_s
      @params.to_s
    end
  end
end
