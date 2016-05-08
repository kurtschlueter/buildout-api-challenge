require 'net/http'
require 'json'

class PropertiesController < ApplicationController
  def index
    uri = URI('https://buildout.com/api/v1/APIKEY/properties.json?limit=25')
    req = Net::HTTP.get(uri)
    @jsonParse = JSON.parse(req)
    @properties = @jsonParse["properties"]
  end

  def specific
    uri = URI('https://buildout.com/api/v1/APIKEY/properties.json?limit=20')
    req = Net::HTTP.get(uri)
    jsonParse = JSON.parse(req)
    properties = jsonParse["properties"]
    properties.each do |property|
      if params["id"] == property["id"].to_s
        @current_prop = property
        break
      end
    end
  end

end
