Rails.application.routes.draw do
  devise_for :user, only: []

  namespace :v1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions
    resources :teams, only: [:index, :create, :show]

    match "*path", to: -> (env) { [404, {}, ['{"error": "not_found"}']] }, via: :all
  end
end
