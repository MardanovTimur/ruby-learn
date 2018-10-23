class TrackJsonController < ApplicationController
  def index
    render json: Track.filter(filtering_params(params))
  end

  def index_json
    @tracks = Track.filter(filtering_params(params))
    @tracks = filter_page @tracks, params[:page]
    render json: @tracks, adapter: :json_api
  end
end
