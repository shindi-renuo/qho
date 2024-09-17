Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  post "qho", to: "home#calculate_qho", as: :qho
  post "scz", to: "home#calculate_scz", as: :scz
end
