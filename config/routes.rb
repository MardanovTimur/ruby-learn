Rails.application.routes.draw do
  get 'json/tracks', to: 'track_json#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
