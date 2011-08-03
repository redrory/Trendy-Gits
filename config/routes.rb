Trendygits::Application.routes.draw do
  
  get "users/new"

  get "users/show"
  
  get "users/index"

  root :to => "users#index"
  
  #omniauth client stuff
  match "/auth/:provider/callback" => "sessions#create"
  match "/auth/failure" => "sessions#fail"
  

  
  match "signout" => "sessions#destroy", :as => :signout

end
