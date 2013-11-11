module ActiveMetrics
  class Metrics
    @metrics = {}
    def self.add(name, &block)
      @metrics[name] = block
    end

    def self.get(name, segment)
      @metrics[name].call(segment)
    end
  end
end
