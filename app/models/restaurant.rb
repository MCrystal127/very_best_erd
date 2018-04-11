require 'open-uri'
class Restaurant < ApplicationRecord
  before_validation :geocode_restaurant_address

  def geocode_restaurant_address
    if self.restaurant_address.present?
      url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{URI.encode(self.restaurant_address)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.restaurant_address_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.restaurant_address_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.restaurant_address_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
  # Direct associations

  # Indirect associations

  # Validations

end
