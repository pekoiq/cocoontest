Rails.application.routes.draw do
  resources :crops
root to: 'crops#index'
 get  '/plantings',    to: 'todo#plantings'
 get  '/tasks',    to: 'todo#tasks'
 get  '/seeds',    to: 'todo#seeds'
 get  '/greenhouse',    to: 'todo#greenhouse'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
