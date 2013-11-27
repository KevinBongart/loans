Loans::Application.routes.draw do
  resources :loans
  resources :banks
  resource :dashboard
  root 'dashboard#index'
end
