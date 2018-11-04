class CoordinateService

  def initialize(location)
    @location = location
  end

  def get_coordinates
    get_location[0][:geometry][:location]
  end

  def get_location
    get_json("/maps/api/geocode/json?address=#{@location}")
  end



  private

    def conn
      Faraday.new(url:"https://maps.googleapis.com") do |faraday|
        faraday.params["key"] = ENV['google_key']
        faraday.adapter Faraday.default_adapter
      end
    end

    def get_json(url)
      JSON.parse(conn.get(url).body, symbolize_names: true)[:results]
    end

end
