Rails.application.routes.draw do
  resources :goals
  resources :actives

  put 'avatars/upload'

  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks], controllers: {
    sessions:           'sessions',
    registrations:      'registrations',
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
