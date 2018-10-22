class TrackJsonController < ApplicationController
  def index
    render json: Track.filter(filtering_params(params))
  end
end
