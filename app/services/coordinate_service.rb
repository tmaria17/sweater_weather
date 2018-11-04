class CoordinateService

  def initialize(location)
    @location = location
  end




  private

    def conn
      Faraday.new(url:"https://maps.googleapis.com/maps/api/geocode/") do |faraday|
        faraday.headers["Accept"] = "application/json"
        faraday.headers["key"] = ENV['google_key']
        faraday.adapter Faraday.default_adapter
      end
    end

end
