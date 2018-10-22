class TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :artist, :streamable
end
