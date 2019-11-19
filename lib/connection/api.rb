require 'net/http'
require 'openssl'
require 'json'

module Connection
  class API
    attr_reader :url

    NASA_API = "https://api.nasa.gov/insight_weather/?api_key=SUCObIFFXWZTrR54qqDC5eBIhHDhckZbFbv0ETdK&feedtype=json&ver=1.0"

    def self.get(url: NASA_API)
      new(url: url).get
    end

    def initialize(url:)
      @url = url
    end

    def get
      Net::HTTP.get(resource_identifier)
    end

    private

    def resource_identifier
      URI(url)
    end
  end
end
