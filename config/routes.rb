Rails.application.routes.draw do
  devise_for :users do 
    get "signup", to: "devise/registrations#new"
    get "login", to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
  end

  authenticate :user do
    mount Motor::Admin => '/dashboard'
  end

  resources :cash_flows
  resources :balance_sheets
  resources :auditor_reports
  resources :profit_and_loss_accounts
  resources :director_reports
  resources :companies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #  root "devise/sessions#new"
  root to: redirect('/dashboard')
end
