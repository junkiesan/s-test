Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/dashboard'
  resources :quizzes
  resources :answers
end
