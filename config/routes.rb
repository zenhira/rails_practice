Rails.application.routes.draw do

  get '/blogs', to: 'blogs#index'
  get '/stocks', to: 'stocks#index'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
