Rails.application.routes.draw do
    post "clientworkouts/find" => "clientworkouts#find" # how to put a route
  resources :clientworkouts
  
 
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
