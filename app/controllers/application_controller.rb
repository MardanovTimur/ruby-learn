class ApplicationController < ActionController::Base

  private
    def filtering_params(params)
      filters = params.slice(:name_filter, :artist_filter)
      puts filters
      filters
    end

end
