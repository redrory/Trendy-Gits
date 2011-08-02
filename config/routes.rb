Trendygits::Application.routes.draw do
  
  get "users/new"

  get "users/show"
  
  get "users/index"

  root :to => "users#index"

end
