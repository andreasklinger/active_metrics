module ActiveMetrics
  class ReportFile
    @reports = {}

    def self.load_file(name)
      # TODO: move /app/reports to config
      reports_path = "#{Rails.root}/app/reports/"

      # TODO: don't simply load files by their name
      file = reports_path + name + ".rb"
      if File.exist? file
        require_dependency file
      end
    end

    def self.define(name, &block)
      report = Report.new name
      report.instance_eval &block
      @reports[name] = report
      puts @reports.inspect
    end

    def self.load(name)
      puts @reports.inspect
      @reports[name]
    end
  end
end
