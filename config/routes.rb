Rails.application.routes.draw do
  devise_for :users
  resources :subjects do
    member do
      put 'like', to: 'subjects#upvote'
    end
  end

  root 'subjects#index'
end
