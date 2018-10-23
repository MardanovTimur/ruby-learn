Rails.application.routes.draw do

  get 'rest/tracks', to: 'track_json#index'

  get 'json/tracks', to: 'track_json#index_json'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
