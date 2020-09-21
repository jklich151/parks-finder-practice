class StateParkSearch
  def initialize(state)
    @state = state
  end

  def park_count
    parks.count
  end

  def parks
    @parks ||= service.parks_by_state(state).map do |park_data|
      Park.new(park_data)
    end
  end

  def service
    ParksService.new
  end
  # def parks
  #   service.parks_by_state(state).map do |park_data|
  #     Park.new(park_data)
  #   end
  # end

  private
    attr_reader :state

end


#     conn = Faraday.new(url: "https://developer.nps.gov") do |faraday|
#       faraday.headers["X-API-KEY"] = 'OIATPxqttLG5OhWI0BZfaNZaqj9BHFjurWoQzbip'
#     end
#
#     response = conn.get("/api/v1/parks?stateCode=#{state}")
#
#     park_search_data = JSON.parse(response.body, symbolize_names: true)[:data]
#     # @parks = json[:data]
#
#     park_search_data.map do |park_data|
#       Park.new(park_data)
#     end
#   end
# end
