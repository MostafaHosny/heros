Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
namespace :api do 
   resources :heros , only: [:index , :show] do 
   	resources :abilities, only: [:index]
   end

   resources :abilities, only: [:index, :show]
 end
end
