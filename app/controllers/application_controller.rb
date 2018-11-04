class ApplicationController < ActionController::Base

  private
    def get_tracks(params)
      Track.filter(filtering_params(params))
    end

    def filtering_params(params)
      params.slice(:name_filter, :artist_filter)
    end
    
    def filter_page(objects, page_object)
      page_object ||= { page: 1, size: 20 }
      objects.page(page_object[:number]).per(page_object[:size])
    end

end
