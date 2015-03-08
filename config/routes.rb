Rails.application.routes.draw do
  resources :subjects

  root 'subjects#index'

end
