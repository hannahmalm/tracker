Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  #creating the namespace - run rails routes to verify that the route is correct
  namespace :api do 
    namespace :v1 do 
      resources :exercises, only: [:index, :create]
    end 
  end 

end
