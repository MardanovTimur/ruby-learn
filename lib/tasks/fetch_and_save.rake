require 'config'
require 'rspotify'
require 'faker'

namespace :fetch_and_save do
  desc "Fetch lastfm tracks"
  task fetch: :environment do
    api_key = Settings.last_fm.api_key
    secret = Settings.last_fm.secret
    token = Settings.last_fm.token
      
    artists = []
    while artists.size == 0 do
      artists = RSpotify::Artist.search(Faker::Artist.name, limit: 1)
    end
    artist = artists[0]

    top_tracks = artist.top_tracks(:US)

    top_tracks.each do |track|
      Track.create(
        name: track.name,
        artist: artist.name,
        url: track.preview_url,
        streamable: true
      )
    end

  end
  
end
