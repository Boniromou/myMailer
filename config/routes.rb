Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # config/routes.rb
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
