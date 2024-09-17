Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  post "calculate", to: "home#calculate"
end
