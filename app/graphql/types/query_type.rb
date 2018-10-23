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
      argument :search, String, required: true
    end

    def tracks(search:)
      puts search
      filter_params = {
        "name_filter": search,
        "artist_filter": search
      }
      filter_params = filter_params.slice(:name_filter, :artist_filter)
      puts filter_params
      Track.filter(filter_params)
    end

  end
end
