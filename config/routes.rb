ActiveMetrics::Engine.routes.draw do

  get '/reports', to: "reports#index"
  get '/reports/:name', to: "reports#show"
  root to: "report#index"
end
