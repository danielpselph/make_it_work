Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #projects
  get '/', to: 'projects#index'
  get '/projects', to: 'projects#index'
#   get '/projects/new', to: 'projects#new'
#   post '/projects', to: 'projects#create'
#   get '/projects/:project_id', to: 'projects#show'
end
