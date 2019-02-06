Rails.application.routes.draw do
  resources :crops
root to: 'crops#index'
 get  '/plantings',    to: 'todo#plantings'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
