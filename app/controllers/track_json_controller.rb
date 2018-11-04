class TrackJsonController < ApplicationController
  def index
    render json: get_tracks(params)
  end

  def index_json
    @tracks = get_tracks(params)
    @tracks = filter_page @tracks, params[:page]
    render json: @tracks, adapter: :json_api
  end
end
