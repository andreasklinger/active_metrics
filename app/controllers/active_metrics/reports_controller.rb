require_dependency "active_metrics/application_controller"

module ActiveMetrics
  class ReportsController < ApplicationController
    def index
    end

    def show
      ReportFile.load_file(params[:name])
      @report = ReportFile.load("FIXME")
    end
  end
end
