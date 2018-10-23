module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :track, TrackType, null: true do
      description "Find a track by ID"
      argument :id, ID, required: true
    end

    def track(id:)
      Track.find(id)
    end

    field :tracks, [TrackType], null: true do
      description "Find all tracks"
      argument :name, String, required: false
      argument :artist, String, required: false
    end

    def tracks(**args)
      filter_params = {
        :name_filter => args[:name], 
        :artist_filter => args[:artist]}
      Track.filter(filter_params)
    end

  end
end
