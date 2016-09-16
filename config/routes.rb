Rails.application.routes.draw do
  get '/contact', to: 'contacts#show'
  resources :blogs
end
