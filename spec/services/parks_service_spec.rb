require 'rails_helper'

describe ParksService do
  context "instance methods" do
    context "#parks_by_state" do
      it "returns park data" do
        search = subject.parks_by_state("TN")
        expect(search).to be_an Array
        expect(search.count).to eq 16
        park_data = search.first

        expect(park_data).to have_key :name
        expect(park_data).to have_key :description
        expect(park_data).to have_key :directionsInfo
        expect(park_data).to have_key :operatingHours
        expect(park_data[:operatingHours].first).to have_key :standardHours
      end
    end
  end
end
