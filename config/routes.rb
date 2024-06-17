Rails.application.routes.draw do
  get 'privacy_en', to: 'privacy#privacy_en'
  # get 'privacy_ph', to: 'privacy#privacy_ph'
  get 'privacy_jp', to: 'privacy#privacy_jp'
  get 'policies_en', to: 'policies#policies_en'
  # get 'policies_ph', to: 'policies#policies_ph'
  get 'policies_jp', to: 'policies#policies_jp'
  root 'landing#index'
  get '/policies', to: 'landing#policies', as: 'policies'
  get '/privacy', to: 'landing#privacy', as: 'privacy'
  # get 'business', to: 'business#index', as: :business
  resources :users, only: [:new, :create]
end
