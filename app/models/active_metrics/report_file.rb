module ActiveMetrics
  class ReportFile
    def self.load(name)
      # TODO: move /app/reports to config
      reports_path = "#{Rails.root}/app/reports/"

      # TODO: don't simply load files by their name
      file = reports_path + name + ".rb"
      if File.exist? file
        require file
      end
    end
  end
end
