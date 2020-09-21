class Park
  attr_reader :name,
              :description,
              :directionsInfo,
              :standardHours

  def initialize(attributes = {})
    @name       = attributes[:name]
    @description       = attributes[:description]
    @directionsInfo      = attributes[:directionsInfo]
    @standardHours   = attributes[:standardHours]
  end
end
