class SearchController < ApplicationController
  def index
    location = params[:location]

    conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.headers["X-API-KEY"] = '<YOUR API KEY>'
    end

    response = conn.get("/api/alt-fuel-stations/v1.json?limit=1&api_key=szlbg5qfe3BCjzjprx009ns0rOdV0nvTaHHjLu2Y")
  end
end
