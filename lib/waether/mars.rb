# frozen_string_literal: true

module Weather
  # This class is designed for getting weather parameters for Mars
  class Mars
    attr_reader :connection_response

    NASA_API = "https://api.nasa.gov/insight_weather/?api_key=SUCObIFFXWZTrR54qqDC5eBIhHDhckZbFbv0ETdK&feedtype=json&ver=1.0"

    def initialize
      @connection_response = Connection::API.get(url: NASA_API)
    end

    def atmospheric_temperature
      waether_by_sol['AT']
    end

    def horizontal_wind_speed
      waether_by_sol['HWS']
    end

    def atmospheric_pressure
      waether_by_sol['HWS']
    end

    def wind_direction
      waether_by_sol['WD']['most_common']
    end

    def season
      waether_by_sol['Season']
    end

    private

    def parse_connection_response
      JSON.parse(connection_response)
    end

    # Add memorization
    def waether_by_sol
      parse_connection_response[sol]
    end

    # Day on Mars
    # Add calculation
    def sol
      '341'
    end
  end
end
