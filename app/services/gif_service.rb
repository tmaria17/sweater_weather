class GifService
  def initialize(search)
    @search = search
  end

  def get_gifs
    get_json("/v1/gifs/search?&q=#{@search}&limit=25&offset=0&rating=G&lang=en")
  end

private

def conn
  Faraday.new(url:"https://api.giphy.com") do |faraday|
    faraday.params["api_key"] = ENV['giphy_key']
    faraday.adapter Faraday.default_adapter
  end
end

def get_json(url)
  JSON.parse(conn.get(url).body, symbolize_names: true)
end

end
