Rails.application.routes.draw do

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"

  get 'rest/tracks', to: 'track_json#index'

  get 'json/tracks', to: 'track_json#index_json'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
