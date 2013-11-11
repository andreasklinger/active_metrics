module ActiveMetrics
  class CohortTable
    def initialize(name)
      @name = name
    end

    def display(metrics)
      @metrics = metrics
    end

    def segment_by(segment)
      @segment = segment
    end

    def generate
      # segments = Segments.get(@segment)
      # segments.map do |segment|
      #   data = { segment: segment }
      puts "cohorttable generate "
        # @metrics.each do |m|
        #   data[m] = Metrics.get(m)
        # end
      #   data
      # end
    end
  end
end
