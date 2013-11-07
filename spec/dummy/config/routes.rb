Rails.application.routes.draw do
  mount ActiveMetrics::Engine => "/metrics"
end
