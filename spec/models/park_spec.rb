require "rails_helper"

describe Park do
  it "exists" do
    attrs = {
      name: "Leslie Knope Park",
      description: "Super Fun",
      directionsInfo: "Follow the Glitter",
      standardHours: "Reasonable"
    }

    park = Park.new(attrs)

    expect(park).to be_a Park
    expect(park.name).to eq("Leslie Knope Park")
    expect(park.description).to eq("Super Fun")
    expect(park.directionsInfo).to eq("Follow the Glitter")
    expect(park.standardHours).to eq("Reasonable")
  end
end
