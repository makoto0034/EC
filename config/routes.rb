Rails.application.routes.draw do
  root to:'home#index'
  get 'home/index'
  post 'home/pay'
  resources:charges
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
