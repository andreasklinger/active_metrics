require_dependency "active_metrics/application_controller"

module ActiveMetrics
  class ReportsController < ApplicationController
    def index
    end

    def show
      ReportFile.load(params[:name])
    end
  end
end
