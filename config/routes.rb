Rails.application.routes.draw do
  # この行を編集する
  devise_for :users
  root 'top#index'

  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index)
  end
end
