Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/dashboard'
  resources :quizz do
    resources :questions do
      resources :answers
    end
  end
end
