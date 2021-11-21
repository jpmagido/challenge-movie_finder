module Builder
  class Query
    def initialize(params)
      @params = params
    end

    def to_s
      @params.to_s
    end
  end
end
