class WeatherService
  def initialize(coordinates)
    @coordinates = coordinates
  end

  def get_weather
    get_json("/forecast/#{ENV['dark_sky_key']}/#{@coordinates[:lat]},#{@coordinates[:lng]}")
  end

  private

  def conn
    url = "https://api.darksky.net"
    Faraday.new(url: url) do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end


end
