class Track < ApplicationRecord
  include Filterable

  scope :name_filter, -> (name) { where("name ilike ?", "%#{name}%") }
  scope :artist_filter, -> (artist_name) { where("artist ilike ?", "%#{artist_name}%") }
end
