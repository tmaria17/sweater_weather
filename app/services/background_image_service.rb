class BackgroundImageService

def get_image(lat,lon)
  get_json("services/rest/?method=flickr.photos.search&lat=#{lat}&lon=#{lon}&tags==parks,museums,landmarks")
end

private

def conn
  Faraday.new(url: 'https://api.flickr.com') do |faraday|
    faraday.params['api_key'] = ENV['flickr_key']
    faraday.params['format'] = 'json'
    faraday.adapter Faraday.default_adapter
  end
end

def get_json(url)
  JSON.parse(conn.get(url).body, symbolize_names: true)
end

end
