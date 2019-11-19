# frozen_string_literal: true

require 'net/http'
require 'json'

module Connection
  # This class is design for establishing API connection using net/http
  class API
    attr_reader :url

    def self.get(url:)
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
