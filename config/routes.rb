Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      get '/capital_info', to: 'capitals#show'
      resources :tourist_sights, only: %i(index)
    end 
  end 
  resources :tourist_sights, only: %i(index)
end
