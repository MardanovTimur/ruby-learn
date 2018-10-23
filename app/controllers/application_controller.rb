class ApplicationController < ActionController::Base

  private
    def filtering_params(params)
      params.slice(:name_filter, :artist_filter)
    end
    
    def filter_page(objects, page_object={:page => 1, :size => 20})
      if page_object
        if page_object.has_key?("number")
          objects = objects.page(page_object[:number])
        end
        if page_object.has_key?("size")
          objects = objects.per(page_object[:size])
        end
      else
        objects = objects.page(1)
      end
      return objects
    end

end
