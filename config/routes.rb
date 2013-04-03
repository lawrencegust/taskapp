TaskApp::Application.routes.draw do

  get "/sessions/new" => 'sessions#new'

  post "/sessions" => 'sessions#create', :as => 'new_session'

  delete "/sessions" => 'sessions#destroy'

  root :to => 'sessions#new'

resources :users
resources :tasks
resources :teams
resources :projects

end
