Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      # get 'projects/index'
      # post 'projects/new'
      # put 'projects/update'
      # get '/show/:id', to: 'projects#show'
      # delete '/destroy/:id', to: 'projects#destroy'
      resources :bugs
      resources :projects 
    end
  end

  # namespace :api do
  #   namespace :v1 do
  #     get 'bugs/index'
  #     post 'bugs/new'
  #     put 'bugs/update'
  #     get  '/show/:id', to: 'bugs#show'
  #     delete '/destroy/:id', to: 'bugs#destroy'
  #   end
  # end

  root 'homepage#index'
  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
