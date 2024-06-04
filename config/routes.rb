Rails.application.routes.draw do
  root 'landing#index'
  get 'business', to: 'business#index', as: :business
end
