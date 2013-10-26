Rails.application.routes.draw do

  mount ActiveMetrics::Engine => "/active_metrics"
end
