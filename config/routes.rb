Rails.application.routes.draw do
  resources :spices, only: [:index, :create, :update, :destroy]

  get "/spices", to: "spices#index"
  post "/spices", to: "spices#create"
  patch "/spices/:id", to: "spices#update"
  delete "/spices/:id", to: "spices#destroy"
end
