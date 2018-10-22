module Filterable
  extend ActiveSupport::Concern
  
  module ClassMethods
    def filter(filtered_params)
      results = self.where(nil)
      puts filtered_params
      filtered_params.each do |key, value|
        results = results.public_send(key, value) if value.present?
      end
      results
    end
  end
end

