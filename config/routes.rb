Rails.application.routes.draw do
  get "/testlesson", to: "results#new"
  post "/testlesson", to: "results#create"

  get "/create", to: "questions#new"
  post "/create", to: "questions#create"
  # get "/lesson", to: "questions#index"
  get "/createcategories", to: "categories#new"
  post "/createcategories", to: "categories#create"
  get "/createlesson", to: "lessons#new"
  post "/createlesson", to: "lessons#create"
  resources :questions 
  resources :categories
  resources :lessons
  resources :results
end
