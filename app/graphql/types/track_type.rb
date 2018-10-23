class Types::TrackType < GraphQL::Schema::Object
  description "A track objects"
  field :id, ID, null: false
  field :name, String, null: false
  field :artist, String, null: false
  field :url, String, null: true
end
