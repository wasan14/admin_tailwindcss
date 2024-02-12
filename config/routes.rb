Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root 'dashboard#dashboard'
  get :all_professor, to: 'dashboard#all_professor'
  get :add_professor, to: 'dashboard#add_professor'
  get :edit_professor, to: 'dashboard#edit_professor'
  get :about_professor, to: 'dashboard#about_professor'

  # Defines the root path route ("/")
  # root "posts#index"
end
