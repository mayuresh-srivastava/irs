Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :incidents, only: [:new, :create] do
    get 'new_long', on: :collection
  end
  match '*unmatchedroutes' => 'home#not_found', via: :all
end
