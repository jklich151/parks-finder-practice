require 'rails_helper'

describe "As a User" do
  it "can see parks by state" do

  visit "/parks"

  select "Tennessee", :from => "state"

  click_on "Find Parks"

  expect(current_path).to eq(parks_path)

  expect(page).to have_content("16 National Parks")

    within (first(".park_info")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".description")
      expect(page).to have_css(".directionsInfo")
      expect(page).to have_css(".standardHours")
    end
  end
end
# As a user,
# When I select "Tennessee" from the form,
# (Note: use the existing form)
# And click on "Find Parks",
# Then my path should be "/parks" with "state=TN" in the parameters
# I see the total of parks found,
# And for each park I see:
# - full name of the park
# - description
# - direction info
# - standard hours for operation
