module ActiveMetrics
  class Report
    def initialize(name)
      @name = name
      @builder = nil
    end

    def generate
      @builder.generate if @builder
    end

    # def define_segment(name, &block)
    #   @segments.add(name, &block)
    # end

    def define_metric(name, &block)
      Metrics.add(name, &block)
    end

    def cohort_table(name, &block)
      @builder = CohortTable.new name
      @builder.instance_eval &block
    end
  end
end
