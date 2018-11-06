class GifService



private

def conn
  Faraday.new(url:"https://api.giphy.com") do |faraday|
    faraday.params["key"] = ENV['giphy_key']
    faraday.adapter Faraday.default_adapter
  end
end

def get_json(url)
  JSON.parse(conn.get(url).body, symbolize_names: true)[:results]
end

end
