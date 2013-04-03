TaskApp::Application.routes.draw do

  root :to => 'users#new'

resources :users
resources :tasks
resources :teams
resources :projects

end
