class ParksService
  def parks_by_state(state)
    get_json("/api/v1/parks?stateCode=#{state}")

    # response = conn.get("/api/v1/parks?stateCode=#{state}")
    #
    # JSON.parse(response.body, symbolize_names: true)[:data]
  end

private

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def conn
    Faraday.new(url: "https://developer.nps.gov") do |faraday|
      faraday.headers["X-API-KEY"] = 'OIATPxqttLG5OhWI0BZfaNZaqj9BHFjurWoQzbip'
    end
  end
end
